@extends('layout.index')
@section('title')
    Liện Hệ
@endsection
    
@section('content')

<div class="container">

        <!-- slider -->
        @include('layout.slide')
        <!-- end slide -->

        <div class="space20"></div>


        <div class="row main-left">
            @include('layout.menu')

            <div class="col-md-9">
                <div class="panel panel-default">            
                    <div class="panel-heading" style="background-color:#337AB7; color:white;" >
                        <h2 style="margin-top:0px; margin-bottom:0px;">Giới Thiệu</h2>
                    </div>

                    <div class="panel-body">
                        <!-- item -->
                       <p>
                       Thiên thượng Thiên hạ, duy ngã độc tôn.                        
                       </p>

                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
@endsection

