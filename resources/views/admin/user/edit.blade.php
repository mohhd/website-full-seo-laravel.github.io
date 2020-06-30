@extends('template_backend.index')
@section('sub-judul', 'Form Edit Data User')
@section('content')

<form action="{{ route('user.update', $user->id) }}" method="post">
    @csrf
    @method('put')
    <div class="row">
        <div class="col-12 col-md-6 col-lg-6">
            @if(count($errors)>0)
                @foreach($errors->all() as $error)
                    <div class="alert alert-danger" role="alert">
                        {{ $error }}
                    </div>
                @endforeach
            @endif
            <div class="card-body">
                <div class="form-group">
                    <label>Nama User</label>
                    <input type="text" class="form-control" name="name" placeholder="Masukkan Nama User" value="{{ $user->name }}">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" name="email" placeholder="Masukkan Email" value="{{ $user->email }}" readonly>
                </div>
                <div class="form-group">
                    <label>Level</label>
                    <select class="form-control" name="level">
                        <option value="" holder>--Pilih Level User--</option>
                        <option value="1" 
                        @if($user->level == 1)
                            selected
                        @endif
                        >Admin</option>
                        <option value="0" 
                        @if($user->level == 0)
                            selected
                        @endif
                        >Penulis</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="text" class="form-control" name="password" placeholder="Masukkan Password">
                </div>
                

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Simpan</button>
                </div>
            </div>
        </div>
    </div>
</form>
@endsection