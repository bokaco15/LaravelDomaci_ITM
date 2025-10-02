@extends('layout')

@section('title')
    <title>Show products Page</title>
@endsection

@section('content')
    <div class="container">
        <h2>Ovo je show products page</h2> <hr> <br>

    {{--TABLE--}}

        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Description</th>
                <th scope="col">Amount</th>
                <th scope="col">Price</th>
                <th scope="col">Image</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>

            @foreach($products as $product)

            <tr>
                <th scope="row">{{$product['id']}}</th>
                <td>{{$product['name']}}</td>
                <td>{{$product['description']}}</td>
                <td>{{$product['amount']}}</td>
                <td>{{$product['price']}}</td>
                @if($product['image'] != '')
                <td>{{$product['image']}}</td>
                @else
                <td>/</td>
                @endif
                <td>
                    <a class="btn btn-danger" href="{{route('products.delete', ['product'=>$product['id']])}}">Delete</a>
                    <a class="btn btn-primary" href="{{route('products.edit', ['id'=>$product['id']])}}">Edit</a>
                </td>
            </tr>

            @endforeach

            </tbody>
        </table>

        @if(session('success'))
            <p>{{session('success')}}</p>
        @endif
        @if(session('error'))
            <p>{{session('error')}}</p>
        @endif

    </div>
@endsection
