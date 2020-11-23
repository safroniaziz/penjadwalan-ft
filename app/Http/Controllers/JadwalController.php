<?php

namespace App\Http\Controllers;

use App\Jadwal;
use Illuminate\Http\Request;

class JadwalController extends Controller
{
    public function index(){
        return view('operator/jadwal.index');
    }
}
