<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Salles</title>
</head>
<body>
    <h1>Creation</h1>
    <form action="{{ route('classroom.store') }}" method="post">
        @csrf
        <p>
            <label for="salle_id" class="form-label">Choisissez une classe</label>
            <select name="classe_id" class="form-select">
                @foreach ($classes as $classe)
                    <option value="{{ $classe->id }}">{{ $classe->getFullName() }}</option>
                @endforeach
            </select>
            @error('salle_id')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
        </p>
        <p>
            <label for="name" class="form-label">Nom de la salle</label>
            <input type="text" name="name" class="form-control">
        </p>
        @error('name')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
        <p>
            <label for="abbv" class="form-label">Abreviation de la salle</label>
            <input type="text" name="abbv" class="form-control">
        </p>
        <p>
            <input type="submit" value="Enregistrer" class="form-control">
        </p>
    </form>
</body>
</html>