@extends('template_backend.index')
@section('sub-judul', 'User')
@section('content')

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session('success') }}
        </div> 
    @endif
    <a href="{{ route('user.create') }}" class="btn btn-info mb-3">Tambah Data User</a><br>

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama User</th>
                <th>Email</th>
                <th>Level</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        @foreach($user as $result => $hasil)
            <tr>
                <td>{{ $result + $user->firstitem() }}</td>
                <td>{{ $hasil->name }}</td>
                <td>{{ $hasil->email }}</td>
                <td>
                    @if($hasil->level)
                            <h6><span class="badge badge-dark">Admin</span></h6>
                        @else
                            <h6><span class="badge badge-warning">Penulis</span></h6>
                    @endif
                </td>
                <td>
                    <form action="{{ route('user.destroy', $hasil->id) }}" method="post">
                        @csrf
                        @method('delete')
                        <a href="{{ route('user.edit', $hasil->id) }}" class="btn btn-primary btn-sm">Edit</a>
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>         
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $user->links() }}

@endsection