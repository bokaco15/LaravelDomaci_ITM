@extends('layout')
@section('title')<title>Add Products</title>@endsection
@section('content')
    <div class="container">
        <h2>Admin stranica za dodavanje proizvoda u bazu</h2>
        <hr><br>
        <form action="{{route('products.add')}}" method="post">
            @csrf
            <input type="text" name="name" placeholder="Unesi naziv proizvoda" value="{{old('name')}}"> <br><br>
            <textarea name="description" cols="30" rows="10" placeholder="Unesite opis proizvoda">{{old('description')}}</textarea> <br><br>
            <input type="text" name="amount" value="{{old('amount')}}" placeholder="Unesite kolicinu"> <br><br>
            <input type="text" name="price" value="{{old('price')}}" placeholder="Unesi cenu proizvoda"> <br><br>
            <input type="text" name="image" value="{{old('image')}}" placeholder="Unesi sliku proizvoda"> <br><br>
            <button>Unesi proizvod</button>

            @if($errors->any())
                @foreach($errors->all() as $error)
                    <p class="text-danger">{{$error}}</p>
                @endforeach
            @endif
        </form> <br><br>
    </div>
@endsection
