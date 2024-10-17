<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\User;
use Faker\Factory as Faker;

class UpdateUserDetails extends Command
{
    protected $signature = 'user:update-random';
    protected $description = 'Update random users with new details';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $users = User::all();
        $faker = Faker::create();
        $timezones = ['CET', 'CST', 'GMT+1'];

        foreach ($users as $user) {
            $user->name = $faker->name();
            $user->timezone = $timezones[array_rand($timezones)];
            $user->save();
        }

        $this->info('Users updated successfully!');
    }
}
