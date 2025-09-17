<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserCreateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $email = $this->command->getOutput()->ask('Enter email');
        $name = $this->command->getOutput()->ask('Enter Name');
        $password = Hash::make($this->command->getOutput()->ask('Enter password'));

//        dump($email, $password, $name);

        if(!$email or !$name or !$password)
        {
            $this->command->getOutput()->error("Greska, sva polja su obavezna");
        }
        else
        {
            if(User::where('email', $email)->exists())
            {
                $this->command->getOutput()->error("Greska!! Email {$email} vec postoji");
            }
            else
            {
                User::create([
                    'email'=>$email,
                    'name'=>$name,
                    'password'=>$password
                ]);

                $this->command->info("Uspesno ste unijeli korisnika sa podacima:\n
                Email: {$email} \n
                Name: {$name} \n
                Password: {$password}
                ");


            }
        }

    }
}
