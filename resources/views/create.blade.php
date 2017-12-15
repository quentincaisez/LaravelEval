@extends('layout.base')

@section('title','accueil')
@section('main')
  <h1>Veuillez inserez un nouveau jeu</h1>

  <form class="flexcenterform flexwrap" method="post" action="/play/insert">
    {{ csrf_field() }}
        <label for="name">Nom </label>
        <input required="required" type="text" name="name"><br>

        <label for="price">Prix </label>
        <input type="number" name="price" value="30"><br>

        <label for="quantity">Quantité </label>
        <input type="number" name="quantity" min="0" value="20" ><br>

        <label for="note">Note </label>
        <input type="number" name="note" min="0" max="20" value="10" ><br>


        <label for="date">Date </label>
        <select name="date">
        @foreach($dates as $date)
            <option value="{{ $date->id}}">{{ $date->date}}</option>
        @endforeach
      </select>
         <br>


        <label for="platforme">Plateforme </label>
        <select name="platforme">
        @foreach($constructors as $constructor)
            <option value="{{ $constructor->id}}">{{ $constructor->constructor}}</option>
        @endforeach

        </select>
         <br>

         <label for="comment">Résumer </label>
         <textarea name="comment" rows="8" cols="80"></textarea>
         <br>



        <input class="send" type="submit" value="Inserer un jeu">
  </form>
@endsection
