<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Salles</title>
</head>
<body>
    <h1>Les salles</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('classroom.create') }}">Nouvelle salle</a>
    </p>
    <ol>
        @foreach ($classrooms as $classroom)
            <li>
                <p>
                    <a href="{{ route('classroom.show', ['classroom' => $classroom]) }}">{{$classroom->name}}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('classroom.edit', ['classroom' => $classroom]) }}">Modifier</a>
                    </button>
                    
                    @if ($classroom->active == 1)
                         <form action="{{ route('classroom.disable', ['classroom' =>$classroom]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('classroom.enable', ['classroom' =>$classroom]) }}" method="post">
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