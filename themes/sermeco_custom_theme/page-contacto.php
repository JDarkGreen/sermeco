<?php /*Template Name: Página Contacto: Plantilla */ ?>
<?php 
	#Extraer Header
	get_header(); 

	#Objeto
	global $post;

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	// Set up the objects needed
	$my_wp_query   = new WP_Query();
	$all_wp_pages  = $my_wp_query->query(array('post_type' => 'page'));
	
	#Página nosotros padre
	$page_nosotros = get_page_by_title("Nosotros");
	#Páginas hijas
	$child_pages   =  get_page_children( $page_nosotros->ID , $all_wp_pages );
?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout pageContacto">

	<!-- Espacio --> <br />

	<!-- Breadcrumbs -->
	<?php custom_breadcrumbs(); ?>

	<!-- Título de la Página -->
	<h2 class="titleCommon__page text-capitalize"> <?= __( $post->post_title , "LANG" ); ?> </h2>

	<!-- Espacio --> <br />

	<div class="row">
		
		<!-- Atención al Cliente -->
		<div class="col-xs-12 col-sm-6">
			
			<!-- Título --> <h2 class="titleCommon__section"> 
			<?= __( "Atención al Cliente" , "LANG" ); ?> </h2> <br/>
			
			<!-- Lista de datos -->
			<?php include(locate_template('partials/contacto/section-data.php')); ?>

			<!-- Espacio --> <br/>	

			<!-- Imágen -->
			<?php  
				$img_contact = isset($options['theme_img_contact']) && !empty($options['theme_img_contact']) ? $options['theme_img_contact'] : '';

				if( !empty($img_contact) ) :
			?>	<img src="<?= $img_contact; ?>" alt="tanques-fabricacion-mantenimiento" class="img-fluid d-bloc m-x-auto" />
			<?php endif; ?>


		</div> <!-- /.col-xs-12 col-sm-6 -->
		
		<!-- Formulario de Contacto -->
		<div class="col-xs-12 col-sm-6">
			
			<!-- Título --> <h2 class="titleCommon__section"> 
			<?= __( "Formulario de Contacto" , "LANG" ); ?> </h2>

		</div> <!-- /.col-xs-12 col-sm-6 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>