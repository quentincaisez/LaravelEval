<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Play;
use App\Constructor;
use App\Date;

class PlayController extends Controller
{
  public function insertOne(Request $request){
    $play = new Play;//creer un nouvelle objet chat
    $play->name = $request->name;//instancie les éléments
    $play->price = $request->price;//instancie les éléments
    $play->quantity = $request->quantity;//instancie les éléments
    $play->note = $request->note;//instancie les éléments

    $play->date_id = $request->date;

    $play->save();//permet de sauvegarder dans la base de donnée
    $play->constructors()->attach($request->constructor);//permet de sauvegarder la couleur grace a l id

   return redirect('/');//redirection
   }
   public function deleteOne(Request $request,$id){
    $play = Play::find($id);
    $play->constructors()->detach();
    $play->delete();
    return redirect('/');//redirection
  }

  public function updateOne(Request $request, $id)
    {

      $play = Play::find($id);
      $datesAll = Date::all();
      $dates = [];
      foreach ($datesAll as $value) {
        $dates[$value->id] = $value->date;
      }
      $contrucsAll = Constructor::all();
      $constructors = [];
      foreach ($contrucsAll as $value) {
        $constructors[$value->id] = $value->constructor;
      }
      return view('update', ['dates' => $dates, 'constructors' => $constructors, 'play' => $play]);
    }
  public function updateOneAction(Request $request)
    {
        $play = Play::find($request->id);

        $play->name = $request->name;//instancie les éléments
        $play->price = $request->price;//instancie les éléments
        $play->quantity = $request->quantity;//instancie les éléments
        $play->note = $request->note;//instancie les éléments
        $play->date_id = $request->date;

        $play->save();
        $play->constructors()->detach();
        $play->constructors()->attach($request->constructors);
        return redirect('/');
    }

}
