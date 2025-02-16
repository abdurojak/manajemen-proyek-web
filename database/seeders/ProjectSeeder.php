<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Project;
use App\Models\User;

class ProjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        if (
            User::count() == 0
        ) {
            User::factory(5)->create();
        }

        $users = User::all();

        foreach ($users as $user) {
            Project::factory(5)->create([
                'user_id' => $user->id,
            ]);
        }
    }
}
