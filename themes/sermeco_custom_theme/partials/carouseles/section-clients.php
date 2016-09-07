<?php  
/***
** ARCHIVO PARTIAL QUE MUESTRA EL CAROUSEL DE CLIENTES
*************************/

?>

<section class="sectionCommon__clients">

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout">
		
		<?php  
			#Extraer la galeria master de clientes
			$args = array(
				'post_status'    => 'publish',
				'post_type'      => 'theme-gal-clients',
				'posts_per_page' => 1,
			);

			$gallery_clients = get_posts( $args );
			$gallery_clients = $gallery_clients[0];

			#Extraer la galería adjunta a este post
			$mb_gallery_clients = apply_filters( 'gallery_current_post' , $gallery_clients->ID );

			#echo "<pre>"; var_dump($mb_gallery_clients);exit;
		?>

		<!-- Carousel Galeria de Clientes -->
		<div id="carousel-clients" class="section__single_gallery js-carousel-gallery" data-items="6" data-items-responsive="1" data-margins="50" data-dots="true" data-autoplay="true">
		
			<?php foreach( $mb_gallery_clients as $item_gallery ): ?>

				<figure>
					<img src="<?= $item_gallery->guid; ?>" alt="<?= $item_gallery->post_content; ?>" class="img-fluid d-block m-x-auto" />
				</figure>
				
			<?php endforeach; ?>

		</div> <!-- /#carousel-clients -->


	</div> <!-- /.pageWrapperLayout -->
	
</section> <!-- /.sectionCommon__clients -->
