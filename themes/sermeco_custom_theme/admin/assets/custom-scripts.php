<?php  
/**
*  Cargar los archivos JS pero del administrador WP
**/

/* Add the media uploader script */
function load_admin_custom_enqueue() {
	//upload media
	wp_enqueue_media();

	//upload single image
	wp_enqueue_script('upload-single-image', THEMEROOT . '/admin/assets/js/media-upload-single-image.js', array('jquery'), '', true);  
	
	//galería de imágenes a tipos de post y páginas
	wp_enqueue_script('upload-container-gallery', THEMEROOT . '/admin/assets/js/upload-container-gallery.js', array('jquery'), '', true);	
	
	//upload gallery a contenedores
	//wp_enqueue_script('upload-container-gallery', THEMEROOT . '/admin/assets/js/container-gallery.js', array('jquery'), '', true);	

	//cargar color a esta taxonomía
	wp_enqueue_style( 'wp-color-picker' );
	wp_enqueue_script('upload-color', THEMEROOT . '/admin/assets/js/color-for-taxonomy.js', array('jquery' , 'wp-color-picker' ), '', true);


	/**
	* ESTILOS MODAL - tingle MODAL
	**/
	/*wp_enqueue_style( 'wp-css-demo', THEMEROOT . "/admin/assets/css/tingle/demo.css" );
	wp_enqueue_style( 'wp-css-tingle', THEMEROOT . "/admin/assets/css/tingle/tingle.min.css" );
	wp_enqueue_script('wp-js-tingle', THEMEROOT . '/admin/assets/js/tingle/tingle.min.js', array('jquery' ), '', true);*/


	/**
	* ESTILOS TABS
	**/

	//cargar velocity
	wp_enqueue_script('wp-js-velocity', THEMEROOT . '/admin/assets/js/velocity.min.js', array('jquery' ), '', true);

	//cargar tabtab
	wp_enqueue_script('wp-js-tabtab', THEMEROOT . '/admin/assets/js/tabtab.min.js', array('jquery','wp-js-velocity'), '', true);

	/**
	* CONFIGURACION DEL TEMA
	**/

	//configuraciones generales de acuerdo a las librerias usadas anteriormente
	wp_enqueue_script('wp-js-custom-theme-admin', THEMEROOT . '/admin/assets/js/custom-theme-admin.js', array('jquery' ), '', true);

	/**
	* Incluir Estilos del tema en las opciones
	**/
	wp_enqueue_style( 'options-theme-style', THEMEROOT . "/admin/assets/css/style-options.css" );

	//cargar elementos dinámicamente
	/*wp_enqueue_script('wp-js-add-elements-dynamic', THEMEROOT . '/admin/assets/js/elements-dynamic.js', array('jquery'), '', true);*/

}

add_action('admin_enqueue_scripts', 'load_admin_custom_enqueue');

?>