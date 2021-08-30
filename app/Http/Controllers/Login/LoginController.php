<?php

namespace App\Http\Controllers\Login;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
class LoginController extends Controller
{
    
	public function authenticate(Request $request){
        // Retrive Input
        $credentials = $request->only('username', 'password');

        if (Auth::attempt($credentials)) {
            // if success login

            return redirect('dashboard');

            //return redirect()->intended('/details');
        }
        // if failed login
        return redirect('login');
    }

}
