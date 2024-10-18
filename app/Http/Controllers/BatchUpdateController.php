<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\User;

class BatchUpdateController extends Controller
{
    public function batchUpdate(Request $request)
    {
        // Fetch users with changes (you might have a 'dirty' flag or similar field)
        $users = User::where('dirty', true)->get();

        $batchPayload = [
            'batches' => [
                'subscribers' => $users->map(function ($user) {
                    return [
                        'first_name' => $user->first_name,
                        'last_name' => $user->last_name,
                        'email' => $user->email,
                        'time_zone' => $user->timezone,
                    ];
                })->toArray(),
            ]
        ];

        // Send request to POSTMAN API
        $response = Http::post('https://localhost:8000/api/users/update', $batchPayload);

        if ($response->failed()) {
            return response()->json([
                'message' => 'Batch update failed',
                'error' => $response->body(),
            ], 500);
        }

        return response()->json([
            'message' => 'Batch update successful',
            'response' => $response->json(),
        ], 200);
    }
}
