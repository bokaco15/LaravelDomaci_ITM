@extends('layout')

@section('title') <title>Dodaj kontakt</title>@endsection

@section('content')
    <div class="container">
        <h2>Ovo je stranica za dodavanje kontakta</h2> <hr><br>

        <form action="/admin/addContactToDB" method="post">
            @csrf
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Subject</label>
                <input type="text" name="subject" class="form-control" id="exampleInputPassword1" placeholder="Subject of message">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Message</label>
                <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Submit</button> <br> <br>
            @if(session('uspeh'))
                <p>{{session('uspeh')}}</p>
            @endif
            @if($errors->any())
                <p>{{$errors->first()}}</p>
            @endif
        </form>

    </div>
@endsection
