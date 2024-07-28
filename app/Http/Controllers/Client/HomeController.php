<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\SanPham;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
     

        return view('clients.homes.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // $newProducts = SanPham::orderBy('created_at','DESC')->take(3)->get();
        $newProducts = SanPham::orderByDesc('is_type')->get();
        return view('clients.homes.content', compact('newProducts'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function detail( $id)
    {
        $sanPham = SanPham::where('id', $id)->first();
        $related = SanPham::where('danh_muc_id', $sanPham->danh_muc_id)
        ->where('id', '!=', $sanPham->id)
        ->get();
        return view('clients.homes.detail', compact('sanPham', 'related'));
    }

    /**
     * Display the specified resource.
     */
    public function cart( )
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
