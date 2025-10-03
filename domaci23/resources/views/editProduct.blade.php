@extends('layout')
@section('title')<title>Edit Product page</title>@endsection
@section('content')
    <div class="container">
        <h2>Admin stranica za EDITOVANJE proizvoda u bazi</h2>
        <hr><br>
        <form action="{{route('products.update', ['id'=>$product['id']])}}" method="post">
            @csrf
            @method('PUT')
            <input type="text" name="name" placeholder="Unesi naziv proizvoda" value="{{$product['name']}}"> <br><br>
            <textarea name="description" cols="30" rows="10" placeholder="Unesite opis proizvoda">{{$product['description']}}</textarea> <br><br>
            <input type="text" name="amount" value="{{$product['amount']}}" placeholder="Unesite kolicinu"> <br><br>
            <input type="text" name="price" value="{{$product['price']}}" placeholder="Unesi cenu proizvoda"> <br><br>
            <input type="text" name="image" value="{{$product['image']}}" placeholder="Unesi sliku proizvoda"> <br><br>
            <button>Unesi proizvod</button>

            @if($errors->any())
                @foreach($errors->all() as $error)
                    <p class="text-danger">{{$error}}</p>
                @endforeach
            @endif
        </form> <br><br>
    </div>
@endsection
