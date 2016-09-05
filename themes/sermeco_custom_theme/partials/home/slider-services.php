<?php  
/***
** ARCHIVO PARTIAL QUE MUESTRA EL CAROUSEL DE SERVICIOS
*************************/

 	$args = array(
		'posts_per_page' => -1,
		'posts_status'   => 'publish',
		'post_type'      => 'theme_services',
 	);

 	$services = get_posts( $args );
?>


<div id="carousel-services" class="section__single_gallery js-carousel-gallery" data-items="4" data-items-responsive="1" data-margins="14" data-dots="true" data-autoplay="true">
	
	<?php foreach( $services as $service ): ?>
		
		<div class="itemPreviewService">

			<!-- Titulo -->
			<h2> <?= $service->post_title; ?> </h2>
			
		</div> <!-- /.itemPreviewService -->
		
	<?php endforeach; ?>

</div> <!-- /.#carousel-services -->