<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class MakeUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $email = $this->command->getOutput()->ask('Unesite email');
        $name = $this->command->getOutput()->ask('Unesite ime');
        $password = Hash::make($this->command->getOutput()->ask('Unesite lozinku'));

//        $email = User::where('email', $email)->first();
//        dd($email);

        // 12.6 resenje vezbe stigao

        if(User::where('email', $email)->exists()) {
            $this->command->getOutput()->error('GRESKA!!! '.$email. ' vec postoji');
            exit();
        }
        else
        {
            User::create([
                'email'=>$email,
                'name'=>$name,
                'password'=>$password
            ]);

            $this->command->info('Uspesno ste dodali korisnika: ' . $email);
        }


    }
}
