<?php

namespace Database\Seeders;

use App\Model\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use function PHPSTORM_META\map;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {          DB::table('users')->insert([
    	'username' => 'admin',
    	'email' => 'admin'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'admin'
    ]);
    DB::table('users')->insert([
    	'username' => 'robotika',
    	'email' => 'robotika'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'robotika'
    ]);
    DB::table('users')->insert([
    	'username' => 'rbb',
    	'email' => 'rbb'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'rbb'
    ]);
    DB::table('users')->insert([
    	'username' => 'geniwangi',
    	'email' => 'geniwangi'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'geniwangi'
    ]);
    DB::table('users')->insert([
    	'username' => 'olahraga',
    	'email' => 'olahraga'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'olahraga'
    ]);
    DB::table('users')->insert([
    	'username' => 'kwu',
    	'email' => 'kwu'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'kwu'
    ]);
    DB::table('users')->insert([
    	'username' => 'racana',
    	'email' => 'racana'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'racana'
    ]);
    DB::table('users')->insert([
    	'username' => 'persma',
    	'email' => 'persma'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'persma'
    ]);
    DB::table('users')->insert([
    	'username' => 'imam',
    	'email' => 'imam'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'imam'
    ]);
    DB::table('users')->insert([
    	'username' => 'mapala',
    	'email' => 'mapala'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'mapala'
    ]);
    DB::table('users')->insert([
    	'username' => 'ksr',
    	'email' => 'ksr'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'ksr'
    ]);
    DB::table('users')->insert([
    	'username' => 'menwa',
    	'email' => 'menwa'.'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'menwa'
    ]);
    DB::table('users')->insert([
    	'username' => Str::random(10),
    	'email' => Str::random(10).'@gmail.com',
    	'password' => Hash::make('12345678'),
    	'role' => 'mahasiswa'
    ]);

    
}
}
