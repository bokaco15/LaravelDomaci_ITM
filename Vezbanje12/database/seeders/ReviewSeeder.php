<?php

namespace Database\Seeders;

use App\Models\Book;
use App\Models\Review;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $books = Book::all();

        foreach ($books as $book)
        {
            $numOfReviews = mt_rand(2,4);
            for($i=0; $i<$numOfReviews; $i++)
            {
                Review::create([
                    'book_id' => $book->id,
                    'rate' => mt_rand(1,5),
                    'comment' => $faker->text(100)
                ]);
            }
        }

        $this->command->getOutput()->info('Uspijesno ste unijeli recenzije za knjige');

    }
}
