<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Play extends Model
{
   public $timestamps = false;
  public function date()
  {
  return $this->belongsTo('App\Date');
  }
  public function constructors()
  {
    return $this->belongsToMany('App\Constructor');
  }
}
