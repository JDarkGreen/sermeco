<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los servicios en cual setea el color
**/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE CÓLOR -----------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_color_service_add' );

//llamar funcion 
function cd_mb_color_service_add()
{	
	$array_custom_types = array("theme-services");

	//solo en productos
	add_meta_box( 'mb-code-product', 'Color Servicio', 'cd_mb_color_service_cb', $array_custom_types , 'side', 'high' );
}
//customizar box
function cd_mb_color_service_cb( $post )
{
	// $post is already set, and contains an object: the WordPress post
    global $post;

	$values = get_post_custom( $post->ID );
	$text   = isset( $values['mb_color_service_text'] ) ? $values['mb_color_service_text'][0] : '';

	// We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    ?>
    <p>
        <label for="mb_color_service_text"> Color: </label> <br/>
        <input class="js-add-theme-color" type="text" name="mb_color_service_text" id="mb_color_service_text" value="<?php echo $text; ?>" />
    </p>
    <?php    
}
//guardar la data
add_action( 'save_post', 'cd_mb_color_service_save' );

function cd_mb_color_service_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if( !current_user_can( 'edit_posts' ) ) return;
     
    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
        )
    );
     
    // Make sure your data is set before trying to save it
    if( isset( $_POST['mb_color_service_text'] ) )
        update_post_meta( $post_id, 'mb_color_service_text', wp_kses( $_POST['mb_color_service_text'], $allowed ) );
}