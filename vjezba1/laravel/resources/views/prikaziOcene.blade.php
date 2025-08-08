<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>
    <h1>Ovo je stranica za prikaz ocena</h1>
    @foreach($ocene as $ocena)
        <p>{{$ocena['profesor']}}</p>
        <p>{{$ocena['predmet']}}</p>
        <p>{{$ocena['ocena']}}</p>
        <hr>
    @endforeach
</body>
</html>
