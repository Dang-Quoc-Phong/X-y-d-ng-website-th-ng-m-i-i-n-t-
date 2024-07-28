<?php


function percent($san_pham_khuyen_mai, $gia_san_pham){
    return round(($gia_san_pham - $san_pham_khuyen_mai) * 100/$gia_san_pham);
}
?> 