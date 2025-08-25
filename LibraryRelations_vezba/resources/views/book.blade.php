@php use App\Models\Books;use App\Models\Loan; @endphp
    <!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>
<h2>Book: {{$book->title}}</h2>
<p>Pisac: {{$book->author->name}}</p>
<p>Izdata ukupno: {{Loan::where('book_id', $book->id)->count()}}</p>
</body>
</html>
