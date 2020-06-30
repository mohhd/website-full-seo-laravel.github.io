@extends('template_landing.content')
@section('isi')

@foreach($data as $isi)
<div id="post-header" class="page-header">
	<div class="page-header-bg" style="background-image: url({{ asset($isi->gambar) }});" data-stellar-background-ratio="0.5"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<div class="post-category">
							<a href="#">{{ $isi->category->nama }}</a>
						</div>
						<h1>{{ $isi->judul }}</h1>
						<ul class="post-meta">
							<li><a href="#">{{ $isi->users->name }}</a></li>
							<li>{{ $isi->created_at }}</li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		
<div class="col-md-8 hot-post-left">
	
	<br>
	{!! $isi->content !!}
@endforeach
</div>


@endsection