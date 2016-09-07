<?php /*Template Name: Página Nosotros: Plantilla */ ?>
<?php 
	#Extraer Header
	get_header(); 

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	// Set up the objects needed
	$my_wp_query = new WP_Query();
	$all_wp_pages = $my_wp_query->query(array('post_type' => 'page'));
?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout">

	<div class="row">
		
		<!-- SIDEBAR DE PÁGINA -->
		<div class="col-xs-12 col-sm-3">

			<aside class="sidebarCommon">

				<?php  
					$page_nosotros = get_page_by_title("Nosotros");
					$child_pages =  get_page_children( $page_nosotros->ID , $all_wp_pages );
				?>

				<ul>
					<li>
						<a href="<?= get_permalink($page_nosotros->ID); ?>">
							<?= $page_nosotros->post_title; ?>
						</a> 
					</li>
					<?php foreach( $child_pages as $child_page ) : ?>
						<li>
							<a href="<?= get_permalink($child_page->ID); ?>">
								<?= $child_page->post_title; ?>
							</a> 
						</li>
					<?php endforeach; ?>
				</ul>
				
			</aside> <!-- /.sidebarCommon -->
			
		</div> <!-- /.col-xs-12 col-sm-3 -->
		
		<!-- CONTENIDO DE PÁGINA -->
		<div class="col-xs-12 col-sm-9">
			
		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>