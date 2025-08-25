<?php

namespace Database\Seeders;

use App\Models\Author;
use App\Models\Books;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $authors = Author::all();

        foreach ($authors as $author)
        {
            $twoOrThree = mt_rand(2,3);
            for($i=0; $i<$twoOrThree; $i++)
            {
                Books::create([
                    'title' => $faker->sentence(2),
                    'published_year' => $faker->year(),
                    'author_id' => $author->id
                ]);
            }
        }
    }
}
