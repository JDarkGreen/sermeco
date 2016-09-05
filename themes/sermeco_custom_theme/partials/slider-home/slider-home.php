<?php  /**
* Plantila Slider Home modificado para trabajar con libreria 
* SLIDER REVOLUTION
**/

	// The Query
	$args = array(
		'order'          => 'ASC',
		'orderby'        => 'menu_order',
		'post_status'    => 'publish',
		'post_type'      => 'slider-home',
		'posts_per_page' => -1,
	);

	$the_query = new WP_Query( $args );

	//Control Loop
	$i = $j = $k = 0;

	// The Loop
	if ( $the_query->have_posts() ) : 
?>

<!-- Contenedor Relativo -->
<div class="containerRelative">

	<div id="slider-home" class="js-carousel-gallery" data-items="1">

		<?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
			
			<div>
				
				<?= get_the_post_thumbnail( get_the_ID() , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>

				<!-- Información -->
				<div class="slider-content">

					<!-- Titulo -->
					<h2> <?= get_the_title(); ?> </h2>
					
					<!-- Contenido -->
					<span> <?= wp_strip_all_tags( get_the_content() ); ?> </span>
				</div> <!-- /.slider-content -->
				
			</div>

		<?php endwhile; ?>

	</div> <!-- /#.carousel-presentation -->

</div> <!-- /.containerRelative -->

<?php endif; wp_reset_postdata(); ?>