# Disable plugin and theme editor

define( 'DISALLOW_FILE_EDIT', true );
define( 'DISALLOW_FILE_MODS', true );


# Remove wordpress Version Number

function wpb_remove_version() {
return '';
}
add_filter('the_generator', 'wpb_remove_version');

# Disable Login by Email in Wordpress

remove_filter( 'authenticate', 'wp_authenticate_email_password', 20 );


# Disable Site Search in Wordpress

function fb_filter_query( $query, $error = true ) {
 
if ( is_search() ) {
$query->is_search = false;
$query->query_vars[s] = false;
$query->query[s] = false;
 
// to error
if ( $error == true )
$query->is_404 = true;
}
}
 
add_action( 'parse_query', 'fb_filter_query' );
add_filter( 'get_search_form', create_function( '$a', "return null;" ) );


# Remove welcome panel in wordpress

remove_action('welcome_panel', 'wp_welcome_panel');
