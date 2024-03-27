<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accueil</title>
</head>
<body>
    <ul>
        <li>
            <a href="{{ route('level.index') }}">Les niveaux</a>
        </li>
        <li>
            <a href="{{ route('serie.index') }}">Les series</a>
        </li>
        <li>
            <a href="{{ route('classe.index') }}">Les classes</a>
        </li>
        <li>
            <a href="{{ route('classroom.index') }}">Les salles</a>
        </li>
    </ul>
</body>
</html>