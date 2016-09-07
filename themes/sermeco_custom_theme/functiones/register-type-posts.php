<?php  
/** 
* Archivo contiene los nuevos tipos de post registrados
**/

function create_post_type(){

	/*|-----SLIDER HOME ----------------------|*/
	
	$labels = array(
		'name'               => __('Slider Home'),
		'singular_name'      => __('Slider'),
		'add_new'            => __('Nuevo Slider'),
		'add_new_item'       => __('Agregar nuevo Slider Principal'),
		'edit_item'          => __('Editar Slider'),
		'view_item'          => __('Ver Slider'),
		'search_items'       => __('Buscar Slider'),
		'not_found'          => __('Slider no encontrado'),
		'not_found_in_trash' => __('Slider no encontrado en la papelera'),
	);

	$args = array(
		'labels'      => $labels,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag','banner_category'),
		'menu_icon'   => 'dashicons-nametag',
	);

	/*|-----SERVICIOS ----------------------|*/
	
	$labels_services = array(
		'name'               => __('Servicios'),
		'singular_name'      => __('Servicio'),
		'add_new'            => __('Nuevo Servicio'),
		'add_new_item'       => __('Agregar nuevo Servicio'),
		'edit_item'          => __('Editar Servicio'),
		'view_item'          => __('Ver Servicio'),
		'search_items'       => __('Buscar Servicios'),
		'not_found'          => __('Servicio no encontrado'),
		'not_found_in_trash' => __('Servicio no encontrado en la papelera'),
	);

	$args_services = array(
		'labels'      => $labels_services,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes' ),
		'show_ui' => true,
		'taxonomies'  => array( 'post_tag' ),
		'menu_icon'   => 'dashicons-chart-pie',
	);

	/*|-----PRODUCTOS ----------------------|*/
	
	$labels_gallery = array(
		'name'               => __('Gal. Imágenes'),
		'singular_name'      => __('Gal. Imágen'),
		'add_new'            => __('Nuevo Gal. Imágen'),
		'add_new_item'       => __('Agregar nuevo Gal. Imágen'),
		'edit_item'          => __('Editar Gal. Imágen'),
		'view_item'          => __('Ver Gal. Imágen'),
		'search_items'       => __('Buscar Gal. Imágens'),
		'not_found'          => __('Gal. Imágen no encontrado'),
		'not_found_in_trash' => __('Gal. Imágen no encontrado en la papelera'),
	);

	$args_gallery = array(
		'labels'      => $labels_gallery,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes' ),
		'show_ui' => true,
		'taxonomies'  => array( 'post_tag' ),
		'menu_icon'   => 'dashicons-format-gallery',
	);

	/*|----- GALERIA DE CLIENTES ----------------------|*/
	
	$labels_clients = array(
		'name'               => __('Gal. Clientes'),
		'singular_name'      => __('Gal. Cliente'),
		'add_new'            => __('Nuevo Gal. Cliente'),
		'add_new_item'       => __('Agregar nuevo Gal. Cliente'),
		'edit_item'          => __('Editar Gal. Cliente'),
		'view_item'          => __('Ver Gal. Cliente'),
		'search_items'       => __('Buscar Gal. Clientes'),
		'not_found'          => __('Gal. Cliente no encontrado'),
		'not_found_in_trash' => __('Gal. Cliente no encontrado en la papelera'),
	);

	$args_clients = array(
		'labels'      => $labels_clients,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes' ),
		'show_ui' => true,
		'taxonomies'  => array( 'post_tag' ),
		'menu_icon'   => 'dashicons-groups',
	);


	/*|REGISTRAR|*/
	
	#SLIDER HOME
	register_post_type( 'slider-home' , $args  );

	#SERVICIOS
	register_post_type( 'theme-services' , $args_services );

	#GALERIA IMAGENES
	register_post_type( 'theme-gallery-images' , $args_gallery );

	#GALERIA CLIENTES
	register_post_type( 'theme-gal-clients' , $args_clients );



	flush_rewrite_rules();
}

add_action( 'init', 'create_post_type' );


?>