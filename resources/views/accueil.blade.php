@extends('layout.base')

@section('title','accueil')
@section('main')

  <h1>Accueil</h1>

  <table>
    <tr>
      <th>id</th>
      <th>nom</th>
      <th>prix</th>
      <th>quantité</th>
      <th>note</th>

      <th>date</th>
      <th>plateforme</th>
      <th>delete</th>
      <th>update</th>
    </tr>
  @foreach($plays as $play)
    <tr>
      <td>  {{$play->id}} </td>
      <td>  {{$play->name}} </td>
      <td>  {{$play->price}} </td>
      <td>  {{$play->quantity}} </td>
      <td>  {{$play->note}} / 20 </td>

      @if($play->date)
      <td>  {{$play->date->date}}</td>
      @else
      <td> Na </td>
      @endif

      @if($play->constructors)
        <td>
            @foreach($play->constructors as $key => $value)
              {{$value->constructor}}
            @endforeach
        </td>
      @else
      <td> Na </td>
      @endif
      <td>
          <form action="/play/delete/{{$play->id}}" method="GET">
            {{ csrf_field() }}
            <button type="submit" value="X">X</button>
          </form>
      </td>
      <td>
          <form action="/play/update/{{$play->id}}" method="GET">
            {{ csrf_field() }}
            <button type="submit" value="X">Up</button>
          </form>
      </td>
    </tr>
@endforeach
</table>
@endsection
