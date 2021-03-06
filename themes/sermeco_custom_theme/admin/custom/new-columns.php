<?php 

//Archivo crea nuevas columnas en el panel de administracion de wp
function add_thumbnail_columns( $columns ) {
    global $post; 
    
    #Obtener el tipo actual de post 
    $current_post = get_post_type( $post );
    #echo $current_post; exit;
    
    #Columnas a setear
    $columns = array(
        'cb'             => '<input type="checkbox" />',
        'featured_thumb' => 'Thumbnail',
        'title'          => 'Title',
        'author'         => 'Author',
        'tags'           => 'Tags',
        'comments'       => '<span class="vers"><div title="Comments" class="comment-grey-bubble"></div></span>',
        'date'           => 'Date'
    );

    #Si el tipo de post es producto
    if( $current_post === "producto-theme") :
        $columns['product_categories'] = "Categoría(s) Producto";
    else:
        #Si son otras categorías
        $columns['categories'] = "Categoría(s)";
    endif;

    return $columns;
}

function add_thumbnail_columns_data( $column, $post_id ) {
    switch ( $column ) {
    case 'featured_thumb':
        echo '<a href="' . get_edit_post_link() . '">';
        echo the_post_thumbnail( array(70,70)  );
        echo '</a>';
        break;

    #Caso Categorías de Producto
    case 'product_categories':

        #Obtener todos los terminos de este post según la taxonomía
        #categoria de producto 
        $terms_cat      = get_the_terms( $post_id , 'producto_category' );
        #creamos un array temporal donde almacenar estos terminos;
        $terms_cat_list = array();
        #recorremos y seteamos el arreglo anterior;
        foreach ( $terms_cat as $term ) :
            $terms_cat_list[] = $term->name;
        endforeach;

        #Mostramos los resultados en un string con comas;
        $string_terms_cat = !empty($terms_cat_list) ? join( ", ", $terms_cat_list ) : "No asociado";

        echo esc_html( $string_terms_cat );

        break;
    }
}

/**
* Seleccionar o customizar los tipos de posts que ser verán afectados.
**/


#Array temporal
$array_temp = array();

#Query
$querystr = "SELECT post_type FROM $wpdb->posts";
#Ejecutar consulta
$results = $wpdb->get_results( $querystr );

#Recorrido y solo obtener los post types
foreach( $results as $result ) :
    $array_temp[] = $result->post_type;
endforeach;

$array_temp = array_unique( $array_temp );

#Eliminar array que no se necesitan
$all_post_registered = array_diff( $array_temp , array('revision','attachment','nav_menu_item') );


if ( function_exists( 'add_theme_support' ) ) :
    #Hacer el recorrido según los tipos de posts
    foreach( $all_post_registered as $post_type ) :
        add_filter( "manage_".$post_type."_posts_columns" , 'add_thumbnail_columns' );
        add_action( "manage_".$post_type."_posts_custom_column" , 'add_thumbnail_columns_data', 10, 2 );
    endforeach;
endif;

?>