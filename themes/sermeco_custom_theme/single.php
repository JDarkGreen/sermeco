<?php /* Single Name: Página Single Blog: Plantilla */ ?>
<?php 
	#Extraer Header
	get_header(); 

	#Objeto
	global $post;

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Extraer todos las categorias del blog
	$args = array(
		'hide_empty' => false,
	);

	$all_categories = get_categories( $args );

	#Primera Categoria
	$first_category = $all_categories[0];
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
							<a href="<?=  get_category_link( $category->term_id ); ?>" class="<?= $category->term_id === $first_category->term_id ? 'active' : ''; ?>">
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

			<br/>

			<!-- Single  -->
			<article class="itemSingleBlog">

				<!-- Fecha -->
				<span class="post-date"> <?= get_the_date();  ?> </span>

				<!-- Título del Post -->
				<h2 class="titlePost text-capitalize">
					<?= __( $post->post_title , "LANG" ); ?>
				</h2>
				
				<figure>
					<?= get_the_post_thumbnail( get_the_ID() , 'full' , array('class'=>'img-fluid d-block') ); ?>
				</figure>	

				<!-- Contenido -->
				<div class="text-content">
					<?= apply_filters( 'the_content' , $post->post_content ); ?>
				</div> <!-- /.text-content -->

				
			</article> <!-- /.itemSingleBlog -->


		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>