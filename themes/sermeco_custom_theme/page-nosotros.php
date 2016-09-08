<?php /*Template Name: Página Nosotros: Plantilla */ ?>
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
<div class="pageWrapperLayout pageWrapperLayout--padding pageNosotros">

	<div class="row">
		
		<!-- SIDEBAR DE PÁGINA -->
		<div class="col-xs-12 col-sm-3">

			<aside class="sidebarCommon">

				<ul>
					<li>
						<a href="<?= get_permalink($page_nosotros->ID); ?>" class="<?= $post->ID === $page_nosotros->ID ? 'active' : ''; ?>">
							<?= $page_nosotros->post_title; ?>
						</a> 
					</li>
					<?php foreach( $child_pages as $child_page ) : ?>
						<li>
							<a href="<?= get_permalink($child_page->ID); ?>" class="<?= $post->ID === $child_page->ID ? 'active' : ''; ?>" >
								<?= $child_page->post_title; ?>
							</a> 
						</li>
					<?php endforeach; ?>
				</ul>
				
			</aside> <!-- /.sidebarCommon -->
			
		</div> <!-- /.col-xs-12 col-sm-3 -->
		
		<!-- CONTENIDO DE PÁGINA -->
		<div class="col-xs-12 col-sm-9">

			<!-- Breadcrumbs -->
			<?php custom_breadcrumbs(); ?>

			<!-- Título de la Página -->
			<h2 class="titleCommon__page text-capitalize">
				<?= __( $post->post_title , "LANG" ); ?>
			</h2>

			<?php  
				#Si tiene imágen destacada 
				if( has_post_thumbnail( $post->ID ) ) :
			?>
			
				<!-- Imágen -->
				<figure class="featured-image pull-sm-left">
					<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
				</figure> <!-- /.featured-image -->

			<?php endif; ?>

			<!-- Texto -->
			<div class="content-text">
				<?= apply_filters( 'the_content' , $post->post_content ); ?>
			</div> <!-- /.content-text -->

			<!-- Limpiar floats --> <div class="clearfix"></div>
			
			<?php 
				#Si es la página de nosotros
				if( $post->ID === $page_nosotros->ID ) :

					#Incluir sección de aptitudes
					include( locate_template('partials/nosotros/aptitudes.php') );

				endif; 
			?>


		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>