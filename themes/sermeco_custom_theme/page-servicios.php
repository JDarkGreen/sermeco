<?php /*Template Name: Página Servicios: Plantilla */ ?>
<?php 
	#Extraer Header
	get_header(); 

	#Objeto
	global $post;

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Extraer todos los servicios
	$args = array(
		'order'          => 'DESC',
		'orderby'        => 'menu_order', 
		'post_status'    => 'publish',
		'post_type'      => 'theme-services',
		'posts_per_page' => -1,
	);

	$all_services = get_posts( $args );
	
	#Primer servicio
	$first_service = $all_services[0];

	// Seteamos la variable banner de acuerdo al post
	$banner = $first_service;  

	include( locate_template("partials/common/banner-common-pages.php") ); 

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout pageWrapperLayout--padding pageServicios">

	<div class="row">
		
		<!-- SIDEBAR DE PÁGINA -->
		<div class="col-xs-12 col-sm-3">

			<aside class="sidebarCommon">
				
				<ul>
					<?php foreach( $all_services as $service ): ?>
						<li>
							<a href="<?= get_permalink( $service->ID ); ?>" class="<?= $service->ID === $first_service->ID ? 'active' : ''; ?>">
								<?= __( $service->post_title , "LANG" ); ?>
							</a>
						</li>
					<?php endforeach; ?>
				</ul>

				<!-- Espacios --> <br/><br/>

				<!-- Página de Contacto -->
				<?php  
					$page_contacto = get_page_by_title("contactenos");
					if( !empty($page_contacto) ) :
				?>
					<a href="<?= get_permalink( $page_contacto->ID ); ?>">
						<img src="<?= IMAGES ?>/contacto_sermeco_metal_mecanica.jpg" alt="sermeco-contacto-servicios-industriales-metal-mecanica" class="img-fluid d-block m-x-auto" />
					</a>
				<?php endif; ?>

				
			</aside> <!-- /.sidebarCommon -->
			
		</div> <!-- /.col-xs-12 col-sm-3 -->
		
		<!-- CONTENIDO DE PÁGINA -->
		<div class="col-xs-12 col-sm-9">

			<!-- Breadcrumbs -->
			<?php custom_breadcrumbs(); ?>

			<div class="row">
				
				<!-- Texto -->
				<div class="col-xs-12 col-sm-7">

					<!-- Título de la Página -->
					<h2 class="titleCommon__page text-capitalize">
						<?= __( $first_service->post_title , "LANG" ); ?>
					</h2>

					<!-- Extracto de Servicio -->
					<h3 class="text-excerpt">
						<?= __( $first_service->post_excerpt , "LANG" ); ?>
					</h3>

					<!-- Contenido textual -->
					<div class="text-content">
						<?= apply_filters( 'the_content', $first_service->post_content ); ?>
					</div> <!-- /.text-content -->

					
				</div> <!-- /.col-xs-12 col-sm- -->

				
				<!-- Galería -->
				<div class="col-xs-12 col-sm-5">

					<?php  
						#Extraer la galería adjunta a este servicio
						$mb_gallery = apply_filters( 'gallery_current_post' , $first_service->ID );

						#Si hay mas de dos imágenes
						if( count($mb_gallery) >= 2 ):
					?>
					
						<div class="containerRelative">

							<!-- Carousel Galeria de Clientes -->
							<div id="carousel-single-service" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="1" data-dots="false" data-autoplay="true">

								<?php foreach( $mb_gallery as $image ): ?>
								
								<a href="<?= $image->guid ?>" class="gallery-fancybox" title="<?= $image->post_content; ?>">
									
									<figure class="imageGalleryService" style="background-image: url(<?= $image->guid; ?>)">
									</figure>

								</a>

								<?php endforeach; ?>

							</div> <!-- /#carousel-single-service -->

							<!-- Flechas de Carousel -->
							<div class="containerCarousel__services text-xs-center">
								
								<a href="#" class="js-carousel-prev" data-slider="carousel-single-service">
									<i class="fa fa-angle-left" aria-hidden="true"></i>
								</a>		

								<a href="#" class="js-carousel-next" data-slider="carousel-single-service">
									<i class="fa fa-angle-right" aria-hidden="true"></i>
								</a>

							</div> <!-- /. -->
							
						</div> <!-- /.containerRelative -->

					<?php else: ?>

						<p> <?= __("Actualizando Galería" , "LANG"); ?> </p>

					<?php endif; ?>
					
				</div> <!-- /.col-xs-12 col-sm- -->
				

			</div> <!-- /.row -->


		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>