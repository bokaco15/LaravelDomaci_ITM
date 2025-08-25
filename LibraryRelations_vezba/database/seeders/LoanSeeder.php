<?php

namespace Database\Seeders;

use App\Models\Books;
use App\Models\Loan;
use App\Models\Member;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LoanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
//        dd($faker->boolean(50));
//        dd($faker->dateTimeThisYear()->format('Y-m-d'));
        //dd($faker->dateTimeBetween('now','+1 months')->format('Y-m-d'));

        $members = Member::all();
        $books = Books::all();

        for($i=0; $i<10; $i++)
        {
            $loanDate = $faker->dateTimeThisYear()->format('Y-m-d');
            Loan::create([
                'book_id' => $books->random()->id,
                'member_id' => $members->random()->id,
                'loan_date' => $loanDate,
                'return_date' => $faker->boolean(50) ? $faker->dateTimeBetween($loanDate,'+1 months')->format('Y-m-d') : null
            ]);
        }
    }
}
