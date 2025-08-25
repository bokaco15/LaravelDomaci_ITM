<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Authors</title>
</head>
<body>
    <h3>Authors: </h3>

    @foreach($authors as $author)
        <div>
            <h4>Name: {{$author->name}}, {{$author->birth_year}}</h4>
            <p>Knjige: </p>
            @foreach($author->books as $k=>$book)
                <a href="/book/{{$book->id}}">{{$k+1}}. {{$book->title}}</a><br>
            @endforeach
        </div>
        <hr>
    @endforeach
</body>
</html>
