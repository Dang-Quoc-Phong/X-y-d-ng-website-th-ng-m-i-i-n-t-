<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    // Đăng nhập

    public function showFormLogin()  {
        return view('auth.login');
    }
    public function login(Request $request)  {
       
        $user = $request->validate([
            'email' => 'required|string|email|max:255',
            'password' =>'required|string'
        ]);
        // dd($user);
        if(Auth::attempt($user)){
            return redirect()->intended('home');
        }
        return redirect()->back()->withErrors([
            'email' => 'Thong tin nguoi dung khong dung'
        ]);
    }
    // Đăng ký
    public function showFormRegister()  {
        return view('auth.register');
        
    }
    public function register(Request $request) {
        $data = $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|max:255',
        'password' => 'required|string|min:8',
        
    ]);  
        $user = User::query()->create($data);
        Auth::login($user);   
        return redirect()->intended('home');       
        }
    // Đăng xuất
    public function logout(Request $request)   {
        Auth::logout();
        return redirect('/login');
    }
}