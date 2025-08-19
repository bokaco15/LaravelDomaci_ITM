<?php

namespace Database\Seeders;

use App\Models\Author;
use App\Models\Book;
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
        //Za svakog autora generiši po 3 knjige (nasumične naslove + random datum objavljivanja).
        $authors = Author::all();

        foreach ($authors as $author)
        {
            for($i=0; $i<3; $i++)
            {
                $title = $faker->sentence(2);
                $exists = Book::where([
                    'author_id'=>$author->id,
                    'title'=>$title
                ])->exists();

                if($exists)
                {
                    $this->command->getOutput()->error('GRESKA!!!');
                    continue;
                }

                Book::create([
                   'author_id' => $author->id,
                   'author_name' => $author->name,
                    'title'=> $title,
                    'published_at'=>$faker->date()
                ]);
            }
        }

        $this->command->getOutput()->success('Uspesno ste upisali piscima knjige');

    }
}
