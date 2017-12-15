<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Play as Play;

class DetailsController extends Controller
{
  public function index()
  {
    $plays = Play::all();
    return view('details',['plays' => $plays]);
  }
}
