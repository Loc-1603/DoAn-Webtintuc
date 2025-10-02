@extends('layout.index')
@section('title')
	{{$loai_tin->Ten}}
@endsection
	
@section('content')

<div class="container">
        <div class="row">
            @include('layout.menu')

            <div class="col-md-9 ">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color:#337AB7; color:white;">
                        <h4><b>{{$loai_tin->Ten}}</b></h4>
                    </div>
					@foreach($tin as $t)
                    <div class="row-item row">
                        <div class="col-md-3">
							@if($t->Hinh)
                            <a href="chi-tiet/{{$t->id}}/{{$t->TieuDeKhongDau}}.html">
                                <br>
                                <div style="width: 100%; aspect-ratio: 16/9; overflow: hidden;">
                                    <img class="img-fluid" src="upload/tintuc/{{$t->Hinh}}" alt="{{$t->TieuDe}}" style="width: 100%; height: 100%; object-fit: cover; object-position: center;">
                                </div>
                            </a>
                            @endif
                        </div>

                        <div class="col-md-9">
                            <h3>{{$t->TieuDe}}</h3>
                            <p>{!!$t->TomTat!!}</p>
                            <a class="btn btn-primary" href="chi-tiet/{{$t->id}}/{{$t->TieuDeKhongDau}}.html">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
                        </div>
                        <div class="break"></div>
                    </div>
					@endforeach

                    <!-- Pagination -->
                    <div class="row">
                        <div class="col-12">
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-center">
                                    {{-- Previous Page Link --}}
                                    @if ($tin->onFirstPage())
                                        <li class="page-item disabled"><span class="page-link">Previous</span></li>
                                    @else
                                        <li class="page-item"><a class="page-link" href="{{ $tin->previousPageUrl() }}">Previous</a></li>
                                    @endif

                                    {{-- Pagination Elements --}}
                                    @foreach ($tin->getUrlRange(1, $tin->lastPage()) as $page => $url)
                                        @if ($page == $tin->currentPage())
                                            <li class="page-item active"><span class="page-link">{{ $page }}</span></li>
                                        @else
                                            <li class="page-item"><a class="page-link" href="{{ $url }}">{{ $page }}</a></li>
                                        @endif
                                    @endforeach

                                    {{-- Next Page Link --}}
                                    @if ($tin->hasMorePages())
                                        <li class="page-item"><a class="page-link" href="{{ $tin->nextPageUrl() }}">Next</a></li>
                                    @else
                                        <li class="page-item disabled"><span class="page-link">Next</span></li>
                                    @endif
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
            </div> 

        </div>

    </div>
@endsection

