<!-- resources/views/calendar.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Holiday Calendar</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .table td {
            width: 14%;
            height: auto;
        }
        .holiday {
            background-color: #ffcccc;
        }
        .other-month {
            background-color: #f9f9f9;
        }
        .navigation {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="my-4">Holiday Calendar</h1>
        <div class="navigation mb-4">
            <form method="POST" action="/calendar" class="form-inline">
                @csrf
                <div class="form-group mr-2">
                    <label for="month" class="mr-2">Month:</label>
                    <select name="month" id="month" class="form-control">
                        @foreach(range(1, 12) as $m)
                            <option value="{{ $m }}" {{ $m == $month ? 'selected' : '' }}>{{ date('F', mktime(0, 0, 0, $m, 1)) }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mr-2">
                    <label for="year" class="mr-2">Year:</label>
                    <input type="number" name="year" id="year" class="form-control" value="{{ $year }}">
                </div>
                <div class="btn-group" role="group">
                    <button type="submit" name="action" value="prev" class="btn btn-secondary">Prev</button>
                    <button type="submit" name="action" value="today" class="btn btn-secondary">Today</button>
                    <button type="submit" name="action" value="next" class="btn btn-secondary">Next</button>
                </div>
                <button type="submit" class="btn btn-primary ml-2">Go</button>
            </form>
        </div>

        @php
            $startOfMonth = \Carbon\Carbon::create($year, $month, 1);
            $endOfMonth = $startOfMonth->copy()->endOfMonth();
            $startOfWeek = $startOfMonth->copy()->startOfWeek();
            $endOfWeek = $endOfMonth->copy()->endOfWeek();
            $currentDate = $startOfWeek->copy();
        @endphp

        <table class="table table-bordered">
            <thead class="thead-light">
                <tr colspan="6" class="thead-light">
                    <center><h3>{{ date('F', mktime(0, 0, 0, $month, 1)) }} - {{ $year }}</h3><center>
                </tr>
                <tr>
                    @foreach(['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'] as $day)
                        <th>{{ $day }}</th>
                    @endforeach
                </tr>
            </thead>
            <tbody>
                {{-- @dd($holidays); --}}
                @while($currentDate <= $endOfWeek)
                    <tr>
                        @foreach(range(0, 6) as $day)
                            <td class="{{ $currentDate->month != $month ? 'other-month' : '' }} {{ $holidays->where('date', $currentDate->toDateString())->isNotEmpty() ? 'holiday' : '' }}">
                                {{ $currentDate->day }}
                                @if($holidays->where('date', $currentDate->toDateString())->isNotEmpty())
                                    @foreach($holidays->where('date', $currentDate->toDateString()) as $holiday)
                                        <div>{{ $holiday->name }} ({{ $holiday->type }})</div>
                                    @endforeach
                                @endif
                            </td>
                            @php $currentDate->addDay(); @endphp
                        @endforeach
                    </tr>
                @endwhile
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
