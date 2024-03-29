<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cours</title>
</head>
<body>
    <h1>Retrait d'un cours</h1>
    <h2> {{$cours->name}}</h2>
    <h3> {{$cours->matter->name}} </h3>
    <h3> {{$cours->coefficient}} </h3>
    <h4> {{$cours->classe->getFullName()}} </h4>
</body>
</html>