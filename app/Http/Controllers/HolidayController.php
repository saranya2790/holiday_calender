<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Holiday;
use Carbon\Carbon;

class HolidayController extends Controller
{
    public function index(Request $request)
    {
        $month = $request->input('month', Carbon::now()->month);
        $year = $request->input('year', Carbon::now()->year);
        $action = $request->input('action', '');

        $currentDate = Carbon::create($year, $month, 1);

        if ($action == 'prev') {
            $currentDate->subMonth();
        } elseif ($action == 'next') {
            $currentDate->addMonth();
        } elseif ($action == 'today') {
            $currentDate = Carbon::now();
        }

        $month = $currentDate->month;
        $year = $currentDate->year;

        $holidays = Holiday::whereYear('date', $year)
                            ->whereMonth('date', $month)
                            ->get();

        return view('calendar', compact('holidays', 'month', 'year'));
    }
}
