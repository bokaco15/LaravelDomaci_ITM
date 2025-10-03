@php use Illuminate\Support\Facades\Session; @endphp
@extends('layout')

@section('title') <title>Korpa</title>@endsection

@section('content')

    <div class="container">
{{--        @dd($cart)--}}
        @foreach($cart as $product)
            <p>{{$product['product_name']}}: {{$product['amount']}}</p>
        @endforeach
    </div>

@endsection
