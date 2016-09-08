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
    global $post;

    $object = get_queried_object();

    // Settings
    $separator          = '&gt;';
    $breadcrums_id      = 'breadcrumbs';
    $breadcrums_class   = 'breadcrumbs';
    $home_title         = 'Home';

    $breadcrumbs        = array();

    ob_start();
?>

    <div class="<?= $breadcrums_class; ?>">
    
        <a href="<?= site_url(); ?>"> <?= $home_title; ?> » </a>

        <?php 

            /** Si se trata de una página **/
            if( is_page( $post->ID ) ) :

                if( $post->post_parent ):

                    $parent_id = $post->post_parent;

                    while( $parent_id ):

                        $page = get_page( $parent_id );
                        
                        $breadcrumbs[] = '<a href="' . get_permalink($page->ID) . '">' . get_the_title($page->ID) . '</a> » ';

                        $parent_id = $page->post_parent;
                    
                    endwhile;
     
                    $breadcrumbs   = array_reverse($breadcrumbs);
                    $breadcrumbs[] = '<span>'. $post->post_title .'</span>';

                    foreach($breadcrumbs as $crumb):
                        echo $crumb;
                    endforeach;

                else:
                    echo '<span>'. $post->post_title .'</span>';
                endif;
            endif;

            /** Si se trata de un single custom post type **/
            if( is_single( $post->ID ) ) :

                $the_post_type = get_post_type_object( get_post_type( $post->ID ) );

                echo '<span>'. $the_post_type->labels->singular_name .'</span> » ';    
                echo '<span>'. $post->post_title .'</span>';    

            endif;

            /** Si se trata de categorias **/
            if( is_category( $object->term_id ) ):

                $category = get_category($object->term_id );

                echo '<span>'.  $category->name .'</span>';    

            endif;
            
        ?>

    </div>

<?php

    $all_breadcrums = ob_get_contents(); ob_clean();
    echo $all_breadcrums; 
    
}


?>