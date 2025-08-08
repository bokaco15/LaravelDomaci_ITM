@extends('layout')

@section('title')
    <title>Dodaj Ocenu</title>
@endsection

@section('body')
    <h1>Stranica za dodavanje ocjene</h1> <hr> <br>

    <form action="/dodajocenuform" method="post">
        
        @csrf
        <input type="text" name="predmet" placeholder="Unesite predmet"> <br><br>
        <input type="text" name="ocena" placeholder="Unesite ocenu"> <br><br>
        <input type="text" name="profesor" placeholder="Unesite ime profesora"> <br><br>
        <button>Dodaj ocjenu</button> <br><br><br>

        @if ($errors->any())
            <p style="color:red;">{{$errors->first()}}</p>
        @endif
        @if (session('uspeh'))
            <p style="color:green;">{{session('uspeh')}}</p>
        @endif
    </form>
    
@endsection