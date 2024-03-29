<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accueil</title>
</head>
<body>
    <header>
        @auth
            <div>
                <p>Vous etes connecte {{ auth()->user()->name }}</p>
                <form action="/logout" method="post">
                    @csrf
                    <button type="submit">logout</button>
                </form>
            </div>
        @else
            <p>
                <a href="/login">Se connecter</a>
            </p>
        @endauth
    </header>
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
        <li>
            <a href="{{ route('role.index') }}">Les roles</a>
        </li>
        <li>
            <a href="{{ route('user.index') }}">Les utilisateurs</a>
        </li>
        <li>
            <a href="{{ route('matter.index') }}">Les matieres</a>
        </li>
        <li>
            <a href="{{ route('cours.index') }}">Les cours</a>
        </li>
    </ul>
</body>
</html>