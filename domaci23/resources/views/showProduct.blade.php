@extends('layout')

@section('title')
    <title>{{$product->name}}</title>
@endsection

@section('content')

   <h2>{{$product->name}}</h2>
    <form action="{{route('cart.add')}}" method="post">
        @csrf
        <input type="hidden" name="id" value="{{$product['id']}}">
        <input type="number" placeholder="amount" name="amount">
        <button class="btn btn-sm btn-primary">Add To Card</button>
    </form>

@endsection
