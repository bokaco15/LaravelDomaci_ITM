<?php

namespace Database\Seeders;

use App\Models\Member;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MemberSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();

        for($i=0; $i<5; $i++)
        {
            Member::create([
                'name' => $faker->name,
                'email' => $faker->email()
            ]);
        }
    }
}
