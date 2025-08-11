<?php

namespace Database\Seeders;

use App\Models\User;
use Faker\Factory; // ===>faker namespace
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //$password = Hash::make('12345678');
        /*
        $users = [
          ['name'=>'Stefan Stefanovic', 'email'=>'sstefanovic@gmail.com', 'password'=>$password],
          ['name'=>'Marko Markovic', 'email'=>'mmarkovic@gmail.com', 'password'=>$password],
          ['name'=>'Jovan Jovic', 'email'=>'jjovic@gmail.com', 'password'=>$password],
        ];
        */

        /*
        foreach ($users as $user) {
            User::create($user);
        }
        */
        //dodavanje fakera
        $faker = Factory::create();


        $amount = (int)$this->command->getOutput()->ask('Koliko korisnika zelite da napravite?', 50);
        $password = $this->command->getOutput()->ask('Unesite lozinku', '1234567890');
        //Pravljenje progress bara
        $this->command->getOutput()->progressStart($amount);

        //Dodavanje 50 korisnika
        for($i=0; $i<$amount; $i++)
        {
            User::create([
                'name'=>$faker->name(),
                'email'=>$faker->unique()->email(),
                'password'=>Hash::make($password)
            ]);

            //brojac da broji ++ progressBar
            $this->command->getOutput()->progressAdvance();
        }

        // Kraj progress bara
        $this->command->getOutput()->progressFinish();



        /*
        $user = User::find(2);
        $user->password = Hash::make('12345678');
        $user->save();
*/
    }
}
