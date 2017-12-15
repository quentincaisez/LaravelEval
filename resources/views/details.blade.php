@extends('layout.base')

@section('title','accueil')
@section('main')

  <h1>Détails</h1>

  @foreach($plays as $play)
  <div class="flexcenterdet flexwrap">
    <h3>{{$play->name}}</h3>

      <img class="cadre" src="images/{{$play->name}}.png" alt="no-cover" />
      <br>
    <p class="parares">{{$play->comment}}</p>
    @if ($play->note>15)
      <p class="parares">note : {{$play->note}} / 20</p>
      <p class="parares">C'est l'un de nos meilleur jeu du moment! profité pour le commander</p>
    @elseif ($play->note<=15 && $play->note>10)
      <p class="parares">note : {{$play->note}} / 20</p>
      <p class="parares">C'est un bon jeu </p>
    @elseif ($play->note<=10 && $play->note>5)
      <p class="parares">note : {{$play->note}} / 20</p>
      <p class="parares">C'est un jeu moyen </p>
    @else
      <p class="parares">note : {{$play->note}} / 20</p>
      <p class="parares">Est-ce vraiment la note qui fait le jeu ?</p>
    @endif
    <p class="parares">date de sortie : {{$play->date->date}} </p>
    @if($play->constructors)

          @foreach($play->constructors as $key => $value)
            <p class="parares"> plateforme : {{$value->constructor}} </p>
          @endforeach

    @else
    <td> Na </td>
    @endif
    <p class="parares">il reste en reste : {{$play->quantity}}</p>
    <p class="parares">prix : {{$play->price}} €</p>

    <img class="separator" src="images/separator.png" alt="------------------------------------------------------------">

      </div>
  @endforeach

@endsection
