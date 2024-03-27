<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Salles</title>
</head>
<body>
    <h1>Retrait d'une salle</h1>
    <h2>Classe : {{$classroom->classe->getFullName()}}</h2>
    <h4>Nom : {{$classroom->name}}</h4>
    <h5>Abbreviation : {{$classroom->abbv}}</h5>
</body>
</html>