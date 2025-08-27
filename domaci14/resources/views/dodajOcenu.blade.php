<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dodaj ocenu</title>
</head>
<body>
    <form action="/dodata-ocena" method="POST">
        
        {{csrf_field()}}
        <input type="text" name="predmet" placeholder="unesite predmet"> <br><br>
        <input type="number" name="ocena" placeholder="unesite ocena"> <br><br>
        <input type="text" name="profesor" placeholder="unesite profesor"> <br><br>

        <button>UNESI OCJENU</button>

        @if ($errors->any)
            <p>{{$errors->first()}}</p>
        @endif

        @if(session('uspeh')) 
            <p>{{session('uspeh')}}</p>
        @endif
        
    </form>
</body>
</html>