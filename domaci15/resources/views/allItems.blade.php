<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>all items</title>
</head>
<body>
    @foreach($items as $item)
        <p>{{$item->item}}
            <a href="{{route('editItem', ['item'=>$item->id])}}">Edit</a>
            <a href="{{route('deleteItem', ['item'=>$item->id])}}">Delete</a>
        </p>
    @endforeach
@if(session('success'))
    <p>{{session('success')}}</p>
@endif
</body>
</html>
