<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los projectos en el cual setea el servicio y el o los clientes
**/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE EXTRADATA -----------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_set_extradata_add' );

//llamar funcion 
function cd_mb_set_extradata_add()
{	
	$array_custom_types = array("theme-projects");

	//solo en productos
	add_meta_box( 'mb-service-project', 'Extradata Asignada', 'cd_mb_set_extradata_cb', $array_custom_types , 'side', 'high' );
}
//customizar box
function cd_mb_set_extradata_cb( $post )
{
	// $post is already set, and contains an object: the WordPress post
    global $post;

    $values           = get_post_custom( $post->ID );

    //Servicios Asignados
    $service_selected = isset( $values['mb_service_select'] ) ? $values['mb_service_select'][0] : '';

    //Clientes Asignados
    $clients_textarea = isset( $values['mb_clients_textarea'] ) ? $values['mb_clients_textarea'][0] : '';

	// We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    //Conseguir todos los servicios Publicados
    $args = array(
        'order'          => 'ASC',
        'orderby'        => 'name',
        'post_status'    => 'publish',
        'post_type'      => 'theme-services',
        'posts_per_page' => -1,
    );

    $all_services = get_posts( $args );

    ?>

    <!-- Servicios -->
    <p>
        <label for="mb_service_select"> Servicios: </label> <br/>

        <select name="mb_service_select" id="mb_service_select">
            <?php foreach( $all_services as $service ) : ?>

                <option value="<?= $service->post_title; ?>" <?php selected( $service_selected , $service->post_title ); ?> > 
                    <?= $service->post_title; ?> 
                </option>

            <?php endforeach; ?> 
        </select> <!-- /.mb_set_extradata_select -->

    </p>

    <!-- Clientes -->
    <p>
        <label for="mb_clients_textarea"> Clientes: </label> 
        <p class="description"> Escribe todos los clientes separados por comas !Importante las comas! .</p>
        <br/>

        <textarea name="mb_clients_textarea" style="width:100%; height: 150px; max-height: 150px;"><?= $clients_textarea; ?></textarea> <!-- /.mb_set_extradata_select -->

    </p>


    <?php    
}
//guardar la data
add_action( 'save_post', 'cd_mb_set_extradata_save' );

function cd_mb_set_extradata_save( $post_id )
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
    if( isset( $_POST['mb_service_select'] ) )
        update_post_meta( $post_id, 'mb_service_select', esc_attr( $_POST['mb_service_select'] ) );    

    if( isset( $_POST['mb_clients_textarea'] ) )
        update_post_meta( $post_id, 'mb_clients_textarea', esc_attr( $_POST['mb_clients_textarea'] ) );
}