<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container pt-5">
    <form action="{{route('updateGrad', ['grad'=>$grad->id])}}" method="post">
        @csrf
        <div class="mb-3">
            <label for="grad" class="form-label">Naziv grada</label>
            <input type="text" class="form-control" id="grad" name="city" value="{{$grad->city}}" }}>
        </div>
        <div class="mb-3">
            <label for="temperatura" class="form-label">Naziv temperaturaa</label>
            <input type="number" class="form-control" id="temperatura" name="temperatura" value="{{$grad->temperatura}}">
        </div>
        <button class="btn btn-sm btn-primary">Izmeni</button>
    </form>

    @if($errors->any())
        <p>{{$errors->first()}}</p>
    @endif

</div>

</body>
</html>
