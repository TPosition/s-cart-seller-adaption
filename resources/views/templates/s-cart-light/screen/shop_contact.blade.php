@php
/*
$layout_page = shop_contact
*/
@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
<section class="section section-sm section-first bg-default text-md-left">
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-6 contact_content">
                <img src="{{ asset(sc_store('logo')) }}">
                <address>
                    <p>{{ sc_store('title') }}</p>
                    <p>{{ sc_store('address') }}</p>
                    <p>{{ sc_store('long_phone') }}</p>
                    <p>{{ sc_store('email') }}</p>
                </address>
            </div>
            <div class="col-12 col-sm-12 col-md-6">
                <!-- Product-->
                <article class="product wow fadeInRight" style="visibility: visible; animation-name: fadeInRight; max-width:100%; min-height:auto;">
                    <div class="product-body">
                        <h5 class="product-title">Become seller! </a></h5><br>
                        <div class="product-price-wrap">
                            Please contact us by email with the below information.
                            <br>
                            <div style="text-align:left;">
                                <ul style="width:60%; margin:auto; list-style: disc; ">
                                    <li style="display: list-item;">Full Name</li>
                                    <li style="display: list-item;">IC Number</li>
                                    <li style="display: list-item;">Phone Number</li>
                                    <li style="display: list-item;">Email</li>
                                    <li style="display: list-item;">Address</li>
                                </ul>
                                <div class="product-button-wrap">
                                </div>
                            </div><br>
                            <h6>Thanks for register as seller!</h6>

                            We will reply you as soon as possible!
                        </div>
                    </div>
                    <div>

                </article>
            </div>
        </div>
</section>
@endsection

{{-- breadcrumb --}}
@section('breadcrumb')
@php
$bannerBreadcrumb = $modelBanner->start()->getBreadcrumb()->getData()->first();
@endphp
<section class="breadcrumbs-custom">
    <div class="parallax-container" data-parallax-img="{{ asset($bannerBreadcrumb['image'] ?? '') }}">
        <div class="material-parallax parallax">
            <img src="{{ asset($bannerBreadcrumb['image'] ?? '') }}" alt="" style="display: block; transform: translate3d(-50%, 83px, 0px);">
        </div>
        <div class="breadcrumbs-custom-body parallax-content context-dark">
            <div class="container">
                <h2 class="breadcrumbs-custom-title">{{ $title ?? '' }}</h2>
            </div>
        </div>
    </div>

    <div class="breadcrumbs-custom-footer">
        <div class="container">
            <ul class="breadcrumbs-custom-path">
                <li><a href="{{ sc_route('home') }}">{{ trans('front.home') }}</a></li>
                <li class="active">{{ $title ?? '' }}</li>
            </ul>
        </div>
    </div>

</section>
@endsection
{{-- //breadcrumb --}}