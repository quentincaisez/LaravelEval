<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Play as Play;

class BaseController extends Controller
{
    public function index()
    {
      $plays = Play::all();
      return view('accueil', ['plays' => $plays]);
    }
}
