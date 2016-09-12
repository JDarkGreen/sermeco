<?php /*Template Name: Página Productos: Plantilla */ ?>
<?php 
	#Extraer Header
	get_header(); 

	#Objeto
	global $post;

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Variable paged paginación
	$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

	//Posts por página
	$posts_per_page = 8;
?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout pageWrapperLayout--padding pageProductos">

	<?php  
		#Extraer Breadcrumbs
		custom_breadcrumbs();
	?>

	<!-- Título de Página -->
	<h2 class="titleCommon__page"> <?= $post->post_title; ?> </h2>

	<!-- Espacio --> <br/>

	<?php  
		$args = array(
			'order'          => 'DESC',
			'orderby'        => 'menu_order',
			'post_status'    => 'publish',
			'post_type'      => 'theme-products',
			'posts_per_page' => $posts_per_page,
			'paged'          => $paged,

		);

		$the_query = new WP_Query( $args );

		if( $the_query->have_posts() ) :

	?>

	<!-- Contenedor de Página -->
	<section class="pageProductos__content containerFlex">

		<?php 
			while( $the_query->have_posts() ) : $the_query->the_post();

				#Extraer ruta de imágen
				$feat_url = wp_get_attachment_url( get_post_thumbnail_id() );

				#Extraer titulo
				$feat_title = wp_strip_all_tags( get_the_content() );
				$feat_title = !empty($feat_title) ? $feat_title : get_the_title();
		?>
			<!-- Item Fancybox -->
			<a href="<?= $feat_url; ?>" title="<?= $feat_title; ?>" rel="group1" class="gallery-fancybox itemProduct text-xs-center">
				
				<figure class="containerRelative">
					<?= get_the_post_thumbnail( get_the_ID() , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>

					<!-- Overlay image -->
					<span class="overlay">
						<i class="fa fa-search-plus" aria-hidden="true"></i>
					</span>

				</figure>

				<!-- Titulo -->
				<h2 class="text-uppercase"> 
					<strong> <?= __( get_the_title() , "LANG" ); ?> </strong> 
				</h2>

			</a>

		<?php endwhile; ?>

	</section> <!-- /.pageProductos__content -->

	<!-- SECCION DE PAGINACIÓN -->
	<section class="sectionPagination text-xs-center">
		
		<?php
			echo "<span>" .  __("Página ","LANG") . "</span>"; 

			#Número de páginas
			$pages = $the_query->max_num_pages;

			for( $i = 1 ; $i <= $pages ; $i++ ) {
		?>
		<!-- Link -->
		<a href="<?= get_pagenum_link( $i ); ?>" class="<?= $i === $paged ? 'active' : '' ?>" > 
			<?= $i ?> 
		</a>

		<?php } ?>

	</section> <!-- /.sectionPagination -->

	<?php endif; wp_reset_postdata(); ?>

	<!-- COMPARTIR PARTIAL -->
	<?php 
		$current_share = get_permalink( $post->ID );
		include( locate_template('partials/social/share-post.php') );
	?>
		

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>