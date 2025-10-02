<div class="row carousel-holder">
        <div class="col-md-12">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <?php $i = 0 ?>
                    @foreach($slide as $sl)
                        <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i ?>" 
                            @if($i == 0)
                                class="active">
                            @endif
                        </li>
                        <?php $i++ ?>
                    @endforeach
                </ol>
                <div class="carousel-inner">
                    <?php $i = 0 ?>
                    @foreach($slide as $sl)
                        <div class="carousel-item 
                            @if($i == 0)
                            active
                            @endif
                            ">
                            <img class="d-block w-100 slide-image" src="upload/slide/{{$sl->Hinh}}" alt="Slide {{$i+1}}" style="height: 300px; object-fit: cover;">
                        </div>
                        <?php $i++ ?>
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>