@extends('layouts.app')

@section('content')
    <h1>Create User</h1>

    @if($errors->any())
        <div>
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('users.store') }}" method="POST">
        @csrf
        <label>First Name:</label>
        <input type="text" name="first_name" value="{{ old('first_name') }}"><br>

        <label>Last Name:</label>
        <input type="text" name="last_name" value="{{ old('last_name') }}"><br>

        <label>Email:</label>
        <input type="email" name="email" value="{{ old('email') }}"><br>

        <label>Timezone:</label>
        <input type="text" name="timezone" value="{{ old('timezone') }}"><br>

        <button type="submit">Create</button>
    </form>
@endsection
