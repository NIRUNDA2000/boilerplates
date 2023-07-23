add_filter( 'woocommerce_currencies', 'add_cw_currency' );
function add_cw_currency( $cw_currency ) {
     $cw_currency['RUBEL'] = __( 'RUSSIA', 'woocommerce' );
     return $cw_currency;
}
add_filter('woocommerce_currency_symbol', 'add_cw_currency_symbol', 10, 2);
function add_cw_currency_symbol( $custom_currency_symbol, $custom_currency ) {
     switch( $custom_currency ) {
		 case 'RUB': $custom_currency_symbol = 'RUB:'; break;
     }
     return $custom_currency_symbol;
}
