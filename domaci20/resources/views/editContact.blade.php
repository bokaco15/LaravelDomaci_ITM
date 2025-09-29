@extends('layout')
@section('title')<title>Edit {{$contact['email']}}</title>@endsection
@section('content')
    <div class="container">
        <h3>Ovo je stranica za edit kontakta</h3> <hr><br>

        <form action="{{route('contact.update', ['id'=>$contact['id']])}}" method="post">
            @csrf
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="{{$contact->email}}">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Subject</label>
                <input type="text" name="subject" class="form-control" id="exampleInputPassword1" placeholder="Subject of message" value="{{$contact['subject']}}">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Message</label>
                <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3">{{$contact->message}}</textarea>
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
