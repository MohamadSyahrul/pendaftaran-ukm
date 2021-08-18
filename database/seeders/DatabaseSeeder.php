<?php

namespace Database\Seeders;

use App\Model\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use function PHPSTORM_META\map;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
           DB::table('users')->insert([
        'username' => 'admin',
        'email' => 'admin'.'@gmail.com',
        'password' => Hash::make('12345678'),
        'role' => 'admin'
    ]);
        // \App\Models\User::factory(10)->create();
    //         DB::table('users')->insert([
    //         'username' => 'admin',
    //         'email' => 'admin'.'@gmail.com',
    //         'password' => Hash::make('12345678'),
    //         'role' => 'admin'
    //     ]);
    //         DB::table('users')->insert([
    //         'username' => Str::random(10),
    //         'email' => Str::random(10).'@gmail.com',
    //         'password' => Hash::make('12345678'),
    //         'role' => 'geniwangi'
    //     ]);
    //          DB::table('users')->insert([
    //         'username' => Str::random(10),
    //         'email' => Str::random(10).'@gmail.com',
    //         'password' => Hash::make('12345678'),
    //         'role' => 'mahasiswa'
    //     ]);

    }
}
