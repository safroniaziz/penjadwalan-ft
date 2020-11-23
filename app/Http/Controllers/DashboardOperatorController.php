<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardOperatorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dashboard(){
        return view('operator.dashboard');
    }
}
