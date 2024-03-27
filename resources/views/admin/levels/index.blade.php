<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Niveaux</title>
</head>
<body>
    <h1>Les niveaux</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('level.create') }}">Nouveau niveau</a>
    </p>
    <ol>
        @foreach ($levels as $level)
            <li>
                <p>
                    <a href="{{ route('level.show', ['level' => $level]) }}">{{$level->name}}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('level.edit', ['level' => $level]) }}">Modifier</a>
                    </button>
                    
                    @if ($level->active == 1)
                         <form action="{{ route('level.disable', ['level' =>$level]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('level.enable', ['level' =>$level]) }}" method="post">
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