<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Roles</title>
</head>
<body>
    <h1>Les roles</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('role.create') }}">Nouveau role</a>
    </p>
    <ol>
        @foreach ($roles as $role)
            <li>
                <p>
                    <a href="{{ route('role.show', ['role' => $role]) }}">{{$role->name}}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('role.edit', ['role' => $role]) }}">Modifier</a>
                    </button>
                    
                    @if ($role->active == 1)
                         <form action="{{ route('role.disable', ['role' =>$role]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('role.enable', ['role' =>$role]) }}" method="post">
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