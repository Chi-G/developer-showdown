@extends('layouts.app')

@section('content')
    <h1>Edit User</h1>

    @if($errors->any())
        <div>
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('users.update', $user->id) }}" method="POST">
        @csrf
        @method('PUT')
        <label>First Name:</label>
        <input type="text" name="first_name" value="{{ $user->first_name }}"><br>

        <label>Last Name:</label>
        <input type="text" name="last_name" value="{{ $user->last_name }}"><br>

        <label>Email:</label>
        <input type="email" name="email" value="{{ $user->email }}"><br>

        <label>Timezone:</label>
        <input type="text" name="timezone" value="{{ $user->timezone }}"><br>

        <button type="submit">Update</button>
    </form>
@endsection
