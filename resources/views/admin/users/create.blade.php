<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Utilisateurs</title>
</head>
<body>
    <h1>Creation</h1>
    <form action="{{ route('user.store') }}" method="post">
        @csrf
        <p>
            <label for="name" class="form-label">Nom de l'utilisateur</label>
            <input type="text" name="name" class="form-control">
        </p>
        <p>
            <label for="email" class="form-label">E-mail de l'utilisateur</label>
            <input type="email" name="email" class="form-control">
        </p>
        <p>
            <label for="password" class="form-label">Mot de passe de l'utilisateur</label>
            <input type="password" name="password" class="form-control">
        </p>

        <p>
            <label for="role_id" class="form-label">Choisissez un role</label>
            <select name="role_id" class="form-select">
                @foreach ($roles as $role)
                    <option value="{{ $role->id }}">{{ $role->name }}</option>
                @endforeach
            </select>
        </p>
        <input type="submit" value="Enregistrer" class="form-control">
    </form>
</body>
</html>