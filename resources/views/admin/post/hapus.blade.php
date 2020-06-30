@extends('template_backend.index')
@section('sub-judul', 'Post yang Terhapus')
@section('content')

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session('success') }}
        </div> 
    @endif

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Post</th>
                <th>Kategori</th>
                <th>Tags</th>
                <th>Thumbnail</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        @foreach($post as $result => $hasil)
            <tr>
                <td>{{ $result + $post->firstitem() }}</td>
                <td>{{ $hasil->judul }}</td>
                <td>{{ $hasil->category->nama }}</td>
                <td>
                    @foreach($hasil->tag as $tg)
                        <ul>
                            <li>{{ $tg->nama }}</li>
                        </ul>
                    @endforeach
                </td>   
                <td><img src="{{ asset($hasil->gambar) }}" class="img-fluid" style="width: 100px"></td>
                <td>
                    <form action="{{ route('post.kill', $hasil->id) }}" method="post">
                        @csrf
                        @method('delete')
                        <a href="{{ route('post.restore', $hasil->id) }}" class="btn btn-info btn-sm">Restore</a>
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>         
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $post->links() }}

@endsection