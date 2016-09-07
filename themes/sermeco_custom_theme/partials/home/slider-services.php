<?php  
/***
** ARCHIVO PARTIAL QUE MUESTRA EL CAROUSEL DE SERVICIOS
*************************/

 	$args = array(
		'posts_per_page' => -1,
		'post_status'    => 'publish',
		'post_type'      => 'theme-services',
 	);

 	$services = get_posts( $args );
?>

<div class="containerRelative">
	
	<div id="carousel-services" class="section__single_gallery js-carousel-gallery" data-items="4" data-items-responsive="1" data-margins="14" data-dots="true" data-autoplay="true">
		
		<?php foreach( $services as $service ): ?>
			
			<div class="itemPreviewService">

				<!-- Titulo -->
				<?php 
					$the_color = get_post_meta( $service->ID , 'mb_color_service_text' , true );
					$the_color = !empty($the_color) ? $the_color : "black";
				?>
				<h2 style="background-color: <?= $the_color ?>;" class="text-xs-center text-uppercase"> 
				<?= $service->post_title; ?> </h2>

				<!-- Imagen -->
				<?php  
					$feat_img = wp_get_attachment_url( get_post_thumbnail_id( $service->ID ) );
				?>
				<a href="<?= get_the_permalink( $service->ID  ); ?>">
					<figure style="background-image: url(<?= $feat_img; ?>)"></figure>
				</a> <!-- /end of link -->

				<!-- Extracto -->
				<div class="content-excerpt">
					<?php  
						$excerpt = $service->post_content;
						$excerpt = wp_trim_words( $excerpt , 10 );
						echo $excerpt;
					?>
				</div> <!-- /.content-excerpt -->
				
			</div> <!-- /.itemPreviewService -->
			
		<?php endforeach; ?>

	</div> <!-- /.#carousel-services -->

	<!-- Flechas de Carousel -->
	<div class="text-xs-right">
	
		<a href="#" class="arrowCarousel__services arrow-prev js-carousel-prev" data-slider="carousel-services">
			<i class="fa fa-angle-left" aria-hidden="true"></i>
		</a>

		<a href="#" class="arrowCarousel__services arrow-next js-carousel-next" data-slider="carousel-services">
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</a>
		
	</div> <!-- /.text-xs-right -->



</div>

