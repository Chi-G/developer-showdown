<?php

namespace App\Services;

use App\Models\User;
use Illuminate\Support\Facades\Http;

class BatchUpdateService
{
    protected $apiEndpoint = 'http://localhost:8000/api/users/batch-update';

    public function updateUsersInBatches()
    {
        $users = User::all();
        $batchSize = 1000;  // Max 1000 records per batch
        $batches = $users->chunk($batchSize);  // Chunk users into batches

        foreach ($batches as $batch) {
            $subscribers = $batch->map(function ($user) {
                return [
                    'first_name' => $user->first_name,
                    'last_name' => $user->last_name,
                    'email' => $user->email,
                    'time_zone' => $user->timezone,
                ];
            })->toArray();

            $payload = ['batches' => [['subscribers' => $subscribers]]];

            $response = Http::post($this->apiEndpoint, $payload);

            if ($response->failed()) {
                // Handle failed request
                \Log::error('Batch update failed', ['response' => $response->body()]);
            }
        }
    }
}
