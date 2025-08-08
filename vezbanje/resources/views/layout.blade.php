<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @yield('title')
</head>
<body>
    <div class="navbar">
        <a href="/">Pocetna/SveOcene</a> | 
        <a href="/dodaj-ocenu">Dodaj ocenu</a>
    </div>

    <hr>

    @yield('body')
</body>
</html>