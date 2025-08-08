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
<div class="container">
    @include('navbar')

    <table class="table table-striped text-center">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Grad</th>
            <th scope="col">Temperatura</th>
            <th scope="col">Akcije</th>
        </tr>
        </thead>
        <tbody>

        @foreach($gradovi as $grad)

            <tr>
                <th scope="row">{{$grad['id']}}</th>
                <td>{{$grad['city']}}</td>
                <td>{{$grad['temperatura']}}</td>
                <td>
                    <a class="btn btn-danger" href="{{route('deleteGrad', ['grad'=>$grad->id])}}">Delete</a>
                    <a class="btn btn-primary" href="{{route('editGrad', ['grad'=>$grad->id])}}">Edit</a>
                </td>
            </tr>

        @endforeach

        </tbody>
    </table>

    @if(session('success'))
        <p>{{session('success')}}</p>
    @endif

</div>

</body>
</html>
