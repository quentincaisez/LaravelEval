<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Constructor;
use App\Date;

class CreateController extends Controller
{
  public function index()
  {
    $constructors = Constructor::all();
    $dates = Date::all();

    return view('create', ['constructors'=> $constructors, 'dates' => $dates]);

  }

}
