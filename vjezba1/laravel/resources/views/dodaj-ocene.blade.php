<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dodaj ocjene</title>
</head>
<body>
    <h1>Forma za unos ocjena u bazu</h1>
    <form action="/dodaj-ocenu" method="post">
        @csrf
        <input type="text" name="predmet" placeholder="Unesite ime predmeta"> <br><br>
        <input type="text" name="ocena" placeholder="Unesite ocenu"><br><br>
        <input type="text" name="profesor" placeholder="Unesite ime profesora"> <br><br>
        <button>Unesi</button> <br><br>

        @if($errors->any())
            <p>{{$errors->first()}}</p>
        @endif
        @if(session('success'))
            <p>{{session('success')}}</p>
        @endif
    </form>
</body>
</html>
