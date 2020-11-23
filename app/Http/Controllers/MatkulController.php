<?php

namespace App\Http\Controllers;

use App\MataKuliah;
use Illuminate\Http\Request;

class MatkulController extends Controller
{
    public function index(){
        $matkuls = MataKuliah::all();
        return view('operator/mata_kuliah.index',compact('matkuls'));
    }
}
