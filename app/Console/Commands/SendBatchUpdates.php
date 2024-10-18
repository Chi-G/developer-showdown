<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\User;
use Illuminate\Support\Facades\Http;

class SendBatchUpdates extends Command
{
    protected $signature = 'users:batch-update';

    protected $description = 'Send batch updates to third-party API';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        // Fetch users with changes
        $users = User::where('dirty', true)->get();

        if ($users->isEmpty()) {
            $this->info('No users to update.');
            return;
        }

        $batchPayload = [
            'batches' => [
                'subscribers' => $users->map(function ($user) {
                    return [
                        'email' => $user->email,
                        'name' => $user->name,
                        'time_zone' => $user->timezone,
                    ];
                })->toArray(),
            ]
        ];

        $response = Http::post('https://api.thirdparty.com/update', $batchPayload);

        if ($response->successful()) {
            $this->info('Batch update sent successfully!');
        } else {
            $this->error('Failed to send batch update.');
        }
    }
}
