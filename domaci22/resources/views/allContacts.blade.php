@extends('layout')

@section('title') <title>Contacts</title> @endsection

@section('content')

    <div class="container">
        <h2>Ovo je admin kontakt</h2> <hr><br>

        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Email</th>
                <th scope="col">Subject</th>
                <th scope="col">Message</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($contacts as $contact)
            <tr>
                <th scope="row">{{$contact['id']}}</th>
                <td>{{$contact['email']}}</td>
                <td>{{$contact['subject']}}</td>
                <td>{{$contact['message']}}</td>
                <td>
                    <a href='{{route('contacts.delete', ['id'=>$contact['id']])}}' class="btn btn-danger" onclick="return confirm('Da li ste sigurni da zelite da obrisete {{$contact['email']}}')">Delete</a>
                    <a href='{{route('contacts.edit', ['id'=>$contact['id']])}}' class="btn btn-primary">Edit</a>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>
        @if(session('uspeh'))
            <p>{{session('uspeh')}}</p>
        @endif

        @if(session('greska'))
            <p>{{session('greska')}}</p>
        @endif

    </div>

@endsection
