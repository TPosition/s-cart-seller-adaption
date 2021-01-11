      <!-- Page Footer-->
      <footer class="section footer-classic">
        <div class="footer-classic-body section-lg bg-brown-2">
          <div class="container">
            <div class="row row-40 row-md-50 justify-content-xl-between">
              <div class="col-sm-6 col-lg-4 col-xl-3 wow fadeInRight">
                <a href="{{ sc_route('home') }}">
                  <img class="logo-footer" src="{{  asset(sc_store('logo')) }}" alt="{{ sc_store('title') }}">
                </a>
                <p>{{ sc_store('title') }}</p>
                <p> {!! sc_store('time_active') !!}</p>
                <div class="footer-classic-social">
                  <div class="group-lg group-middle">
                    <div>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 col-xl-3 wow fadeInRight" data-wow-delay=".1s">
                <h4 class="footer-classic-title">{{ trans('front.about') }}</h4>
                <ul class="contacts-creative">
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                      <div class="unit-body"><a href="#">{{ trans('front.shop_info.address') }}: {{ sc_store('address') }}</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                      <div class="unit-body"><a href="tel:#">{{ trans('front.shop_info.hotline') }}: {{ sc_store('long_phone') }}</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-email-outline"></span></div>
                      <div class="unit-body"><a href="mailto:#{{ sc_store('email') }}">{{ trans('front.shop_info.email') }}: {{ sc_store('email') }}</a></div>
                    </div>
                  </li>
                  <li>


                  </li>
                </ul>
              </div>
              <div class="col-lg-4 wow fadeInRight" data-wow-delay=".2s">
                <h4 class="footer-classic-title"> {{ trans('front.my_account') }}</h4>
                <!-- RD Mailform-->
                <ul class="contacts-creative">
                  @if (!empty($sc_layoutsUrl['footer']))
                  @foreach ($sc_layoutsUrl['footer'] as $url)
                  <li>
                    <a {{ ($url->target =='_blank')?'target=_blank':''  }} href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                  </li>
                  @endforeach
                  @endif
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- <div class="footer-classic-panel">
          <div class="container">
            <div class="row row-10 align-items-center justify-content-sm-between">
              <div class="col-md-auto">
                <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>{{ sc_store('title') }}</span><span>.&nbsp; All rights reserved</span></p>
              </div>
              <div class="col-md-auto order-md-1">Hosted by <a target="_blank"
                href="https://giaiphap247.com">GiaiPhap247.com</a></div>
              <div class="col-md-auto">
                    Power by <a href="{{ config('s-cart.homepage') }}">{{ config('s-cart.name') }} {{ config('s-cart.sub-version') }}</a>
              </div>
            </div>
          </div>
        </div> -->
      </footer>