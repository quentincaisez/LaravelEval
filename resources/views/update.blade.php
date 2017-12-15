@extends('layout.base')

@section('title','accueil')
@section('main')
  <h1>Veuillez mettre a jour le jeu selectionner</h1>
   <form class="flexcenterform flexwrap" method="post" action="/play/update">
     {{ csrf_field() }}

        <input type="hidden" name="id" value="{{ $play->id}}">

        <label for="name">Nom </label>
        <input type="text" name="name"  value="{{ $play->name}}"><br>

        <label for="price">Prix </label>
        <input type="number" name="price" min="0" ondragover=""value="{{ $play->price}}"><br>

        <label for="quantity">Quantité </label>
        <input type="number" name="quantity" value="{{ $play->quantity}}"><br>

        <label for="note">Note </label>
        <input type="number" name="note" min="0" max="20" value="{{ $play->note}}" ><br>

        <label for="date">date </label>
          <select name="date">
              @foreach($dates as $key => $value)
                @if($key==$play->date_id)
                  <option selected="selected" value="{{$key}}">{{$value}}</option>
                @else
                  <option value="{{$key}}">{{$value}}</option>
                @endif
                @endforeach
          </select>
        <br>

        <label for="constructors" »>Plateforme </label>
        <select  name="constructors">
          @foreach($constructors as $key => $value)
            <option value="{{ $key}}">{{ $value}}</option>
          @endforeach
        </select>
        <br>  
         <input type="submit" value="Update">

   </form>

@endsection
