<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>
    <form action="{{route('items.update', ['item'=>$item->id])}}" method="post">
        @csrf
        <input type="text" name="item" id="item" placeholder="izmeni item" value="{{$item->item}}"> <button>edituj</button>
    </form>
</body>
</html>
