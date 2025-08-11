@php use Illuminate\Pagination\Paginator; @endphp
@extends('layout')
@section('title')<title>Weather</title>@endsection
@section('content')

    <div class="container">
        @foreach($prognoza as $key=>$value)
            <p>{{ $prognoza->firstItem() + $key}}: {{$value->city}} {{$value->temperature}}</p>
        @endforeach

        {{$prognoza->links('pagination::bootstrap-5')}}

    </div>


@endsection
