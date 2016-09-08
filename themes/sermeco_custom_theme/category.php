<?php  
/**
** Archivo Template de Categorías
**/
?>
<!-- Header -->
<?php 
	global $post; $wp_query;
	
	get_header(); 
	$options = get_option("theme_settings");

	$current_term = get_queried_object(); //Objeto actual 
	/*
	* Options Term
	* ["term_id"] ["name"] ["slug"] ["term_group"] ["term_taxonomy_id"] 
	* ["taxonomy"] ["description"] ["parent"] ["count"] ["filter"] 
	*/

	//Extraer todos las categorias del blog
	$args = array(
		'hide_empty' => false,
	);

	$all_categories = get_categories( $args );

	#Posts_por_páginas
	$posts_per_page = 4; 

	#Paginación
	$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout pageWrapperLayout--padding pageBlog">

	<div class="row">
		
		<!-- SIDEBAR DE PÁGINA -->
		<div class="col-xs-12 col-sm-3">

			<aside class="sidebarCommon">
				
				<ul>
					<?php foreach( $all_categories as $category ): ?>
						<li>
							<a href="<?=  get_category_link( $category->term_id ); ?>" class="<?= $category->term_id === $current_term->term_id ? 'active' : ''; ?>">
								<?= __( $category->name , "LANG" ); ?>
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

			<!-- Espacios --> <br/><br/>

			<!-- Título de la Página -->
			<h2 class="titleCommon__page text-capitalize">
				<?= __( $current_term->name , "LANG" ); ?>
			</h2>

			<!-- Espacios --> <br/>
			
			<!-- Sección -->
			<?php  
				$args = array(
					'order'          => 'DESC',
					'orderby'        => 'date',
					'post_status'    => 'publish',
					'post_type'      => 'post',
					'posts_per_page' => $posts_per_page,
					'paged'          => $paged,
					'cat'            => $current_term->term_id,

				);

				$the_query = new WP_Query( $args );

				if( $the_query->have_posts() ) :
			?>
				
				<section class="pageBlog__content">
					
					<?php while( $the_query->have_posts() ) :  $the_query->the_post(); ?>
						
						<!-- Item preview -->
						<article class="itemPreview__blog">
							
							<!-- Imágen Preview -->
							<a href="<?= get_permalink(); ?>" title="<?= get_the_title(); ?>" >
								<figure>
									<?= get_the_post_thumbnail( get_the_ID() , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
								</figure>								
							</a>

							<!-- Título -->
							<h2 class="text-title"> <?= get_the_title(); ?> </h2>

							<!-- Excerpt -->
							<div class="text-excerpt">
								<?php 
									$limit_words = 35;
									
									$excerpt = wp_strip_all_tags( get_the_content(".") );
									$excerpt = wp_trim_words( $excerpt , $limit_words );

									echo $excerpt ."<br/>";
								?> 

								<a href="<?= get_permalink(); ?>"> Leer Más </a>
								
							</div> <!-- /.text-excerpt -->

							
						</article> <!-- /.itemPreview__blog -->

					<?php endwhile; ?>	
				
				</section> <!-- /.pageBlog__content -->


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

			<?php else: ?>

				<h2 class="text-uppercase"> No hay post disponibles por el momento. Gracias </h2>

			<?php endif; wp_reset_postdata(); ?>

		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->



<!-- Footer -->
<?php get_footer(); ?>