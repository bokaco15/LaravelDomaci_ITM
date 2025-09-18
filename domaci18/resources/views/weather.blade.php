@php use Illuminate\Pagination\Paginator; @endphp
@extends('layout')
@section('title')<title>Weather</title>@endsection
@section('content')

    <div class="container">
        @foreach($prognoza as $key=>$temp)
            <p>{{$prognoza->firstItem() + $key}}: <B>{{$temp->city->name}}</B> - {{$temp->temperature}} stepeni</p>
        @endforeach

        {{$prognoza->links('pagination::bootstrap-5')}}

    </div>


@endsection
