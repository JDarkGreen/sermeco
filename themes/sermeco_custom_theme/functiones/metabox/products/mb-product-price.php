<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los producto en el cual setea el precio 
**/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE PRECIO -----------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_price_product_add' );

//llamar funcion 
function cd_mb_price_product_add()
{	
	$array_custom_types = array("theme-producto");

	//solo en productos
	add_meta_box( 'mb-price-product', 'Precio de Producto', 'cd_mb_price_product_cb', $array_custom_types , 'side', 'high' );
}
//customizar box
function cd_mb_price_product_cb( $post )
{
	// $post is already set, and contains an object: the WordPress post
    global $post;

	$values = get_post_custom( $post->ID );
	$text   = isset( $values['mb_price_product_text'] ) ? $values['mb_price_product_text'][0] : '';

	// We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    ?>
    <p>
        <label for="mb_price_product_text"> Precio: </label>
        <input size="" type="text" name="mb_price_product_text" id="mb_price_product_text" value="<?php echo $text; ?>" placeholder="eg. S/. 40.00" />
    </p>
    <?php    
}
//guardar la data
add_action( 'save_post', 'cd_mb_price_product_save' );

function cd_mb_price_product_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if( !current_user_can( 'edit_post' ) ) return;
     
    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
        )
    );
     
    // Make sure your data is set before trying to save it
    if( isset( $_POST['mb_price_product_text'] ) )
        update_post_meta( $post_id, 'mb_price_product_text', wp_kses( $_POST['mb_price_product_text'], $allowed ) );
}