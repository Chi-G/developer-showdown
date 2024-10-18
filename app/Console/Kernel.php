<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    protected $commands = [
        Commands\UpdateUserDetails::class, // Add your custom command here
    ];

    protected function schedule(Schedule $schedule)
    {
        $schedule->call(function () {
            app(BatchUpdateService::class)->updateUsersInBatches();
        })->hourly(); //run the schedule per hour
    }

    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
