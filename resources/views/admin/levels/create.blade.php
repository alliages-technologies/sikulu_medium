<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Niveaux</title>
</head>
<body>
    <h1>Creation</h1>
    <form action="{{ route('level.store') }}" method="post">
        @csrf
        <p>
            <label for="name" class="form-label">Nom du niveau</label>
            <input type="text" name="name" class="form-control">
        </p>
        @error('name')
            <div class="alert alert-danger">{{$message}}</div>
        @enderror
        <p>
            <label for="abbv" class="form-label">Abreviation du niveau</label>
            <input type="text" name="abbv" class="form-control">
        </p>
        <input type="submit" value="Enregistrer" class="form-control">
    </form>
</body>
</html>