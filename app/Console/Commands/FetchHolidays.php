<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use GuzzleHttp\Client;
use App\Models\Holiday;
use Illuminate\Support\Facades\Log;

class FetchHolidays extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'fetch:holidays';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch public holidays from Calendarific API';

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $client = new Client();
        $response = $client->get('https://calendarific.com/api/v2/holidays', [
            'query' => [
                'api_key' => 'IhAWty3ycBYBxmnuEnm1QXymJkpJ9Klx',
                'country' => 'IN',
                'year' => date('Y')
            ]
        ]);
        // dd($response);
        $responseBody = $response->getBody()->getContents();
        Log::info('API Response: ' . $responseBody);

        $holidays = json_decode($responseBody, true)['response']['holidays'];

        foreach ($holidays as $holiday) {
            $date = new \DateTime($holiday['date']['iso']);
            $formattedDate = $date->format('Y-m-d');

            Holiday::updateOrCreate(
                ['name' => $holiday['name'], 'date' => $formattedDate],
                ['type' => $holiday['type'][0]]
            );
        }

        $this->info('Holidays fetched successfully!');
        // return Command::SUCCESS;
    }
}
