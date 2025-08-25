<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>
    <h2>Clanovi koji nisu vratili knjige: </h2>
    @foreach($loans as $loan)
        @if($loan->return_date == NULL)
            <p>Clan: <b><i>{{$loan->member->name}}</i></b> nije vratio knjigu <b><i>{{$loan->book->title}}</i></b></p>
        @endif
    @endforeach
</body>
</html>
