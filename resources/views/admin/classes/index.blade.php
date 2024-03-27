<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Classes</title>
</head>
<body>
    <h1>Les Classes</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('classe.create') }}">Nouvelle classe</a>
    </p>
    <ol>
        @foreach ($classes as $classe)
            <li>
                <p>
                    <a href="{{ route('classe.show', ['classe' => $classe]) }}">{{ $classe->getFullName() }}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('classe.edit', ['classe' => $classe]) }}">Modifier</a>
                    </button>

                    @if ($classe->active == 1)
                         <form action="{{ route('classe.disable', ['classe' =>$classe]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('classe.enable', ['classe' =>$classe]) }}" method="post">
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