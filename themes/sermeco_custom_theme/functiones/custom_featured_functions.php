<?php  

global $post, $wpdb;

/****
** NUEVAS FUNCIONES PERSONALIZADAS DEL TEMA
*************************************************************/

/** Funcion que retorna el metabox de galería del tema. **/
function get_items_gallery( $id_post ) 
{
	#Array temporal de imagenes
	$array_gallery = array();

    #Obtener metabox de galería
    $mb_image_gallery = get_post_meta( $id_post , 'mb_image_gallery' , true );

    #Si hay resultado devolver arreglo de items 
    if( !empty($mb_image_gallery) && $mb_image_gallery !== '-1' ) :


    	$mb_image_gallery = explode(',', $mb_image_gallery ); 
        
        //eliminar valores negativos
        $mb_image_gallery = array_diff( $mb_image_gallery , array(-1) );
         
        //Eliminar espacios en blanco 
        $mb_image_gallery = array_filter( $mb_image_gallery , function($var) {
            return trim($var);
        });


        #Recorrido de id de imagenes
        foreach ( $mb_image_gallery as $meta_img_id ) : 

            #Conseguir todos los datos de este item
            $item = get_post( $meta_img_id );

        	#Almacenar en array de imagenes
        	$array_gallery[] = $item;

        endforeach;

        #Devolver array de datos e imágenes de galería
        return $array_gallery;


    #sino devolver mensaje que no hay galeria
    else:

    	$no_data = array(
			'post_content' => 'aun no hay imágen',
			'guid'         => 'http://proflemsa.com.mx/home/wp-content/uploads/2013/05/actualizando.png',
    	);
    	$no_data = (object)$no_data;

    	return array($no_data);

    endif;
}

add_filter( 'gallery_current_post', 'get_items_gallery' );


/** Funcion que retorna los breadcrumbs o migas de pan. **/
function custom_breadcrumbs() 
{
       
    // Settings
    $separator          = '&gt;';
    $breadcrums_id      = 'breadcrumbs';
    $breadcrums_class   = 'breadcrumbs';
    $home_title         = 'Home';

    $echo = '<ul class="'.$breadcrumbs.'">';
    
    	$echo = '<li><a>' . $home_title . '</a><li>';

    $echo .= '</ul>';


}


?>