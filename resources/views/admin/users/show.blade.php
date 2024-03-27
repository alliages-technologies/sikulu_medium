<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Utilisateurs</title>
</head>
<body>
    <h1>Retrait d'un user</h1>
    <h2>{{$user->name}}</h2>
    <h3>{{$user->role->name}}</h3>
    <h4>{{ $user->email }}</h4>
</body>
</html>