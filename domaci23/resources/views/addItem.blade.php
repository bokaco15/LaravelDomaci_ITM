<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>
<form action="{{route('items.dbAdd')}}" method="post">
    @csrf
    <input type="text" name="item" placeholder="add item"> <button>add item</button>
</form>
</body>
</html>
