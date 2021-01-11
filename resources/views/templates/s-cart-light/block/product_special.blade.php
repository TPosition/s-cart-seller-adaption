@php
$productPromotion = $modelProduct->getProductPromotion()->setRandom()->setLimit(sc_config('product_viewed'))->getData()
@endphp
@if (!empty($productPromotion))


<!--/product special-->
@endif