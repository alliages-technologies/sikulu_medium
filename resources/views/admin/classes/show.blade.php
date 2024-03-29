<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Classes</title>
</head>
<body>
    <h1>Retrait d'une classe</h1>
    <h2> {{$classe->level->name}} {{$classe->serie->name}} </h2>
    <p>Ou</p>
    <h3> {{$classe->level->abbv}} {{$classe->serie->abbv}} </h3>
    <h4>Les cours</h4>
    <ol>
        @foreach ($classe->cours as $cours)
            <li>{{ $cours->matter->name }} {{ $cours->coefficient }}</li>
        @endforeach
    </ol>
</body>
</html>