<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Stranica za dodavanje ocjena</h1>
    <form action="/dodaj-ocenu" method="POST">
        @csrf
        <input type="text" placeholder="Unesite ime predmeta" name="predmet"> <br><br>
        <input type="number" placeholder="Unesite ocenu" min="1" max="5" name="ocena"> <br><br>
        <input type="text" placeholder="Unesite ime profesora" name="profesor"> <br><br>
        <button>Dodaj ocenu</button>
        @if (session("uspeh"))
            <p>{{session("uspeh")}}</p>
        @endif
    </form>
</body>
</html>