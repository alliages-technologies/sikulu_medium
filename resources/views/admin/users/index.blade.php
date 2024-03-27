<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Utilisateurs</title>
</head>
<body>
    <h1>Les utilisateurs</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('user.create') }}">Nouvel utilisateur</a>
    </p>
    <ol>
        @foreach ($users as $user)
            <li>
                <p>
                    <a href="{{ route('user.show', ['user' => $user]) }}">{{$user->name}}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('user.edit', ['user' => $user]) }}">Modifier</a>
                    </button>
                    
                    @if ($user->active == 1)
                         <form action="{{ route('user.disable', ['user' =>$user]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('user.enable', ['user' =>$user]) }}" method="post">
                            @csrf
                            <input type="submit" value="activer">
                        </form>
                    @endif
                </p>
            </li>
        @endforeach
    </ol>
</body>
</html>