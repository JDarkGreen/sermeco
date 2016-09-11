<?php /*Template Name: Página Contacto: Plantilla */ ?>
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
<div class="pageWrapperLayout pageContacto">

	<!-- Espacio --> <br />

	<!-- Breadcrumbs -->
	<?php custom_breadcrumbs(); ?>

	<!-- Título de la Página -->
	<h2 class="titleCommon__page text-capitalize"> <?= __( $post->post_title , "LANG" ); ?> </h2>

	<!-- Espacio --> <br />

	<div class="row">
		
		<!-- Atención al Cliente -->
		<div class="col-xs-12 col-sm-6">
			
			<!-- Título --> <h2 class="titleCommon__section"> 
			<?= __( "Atención al Cliente" , "LANG" ); ?> </h2> <br/>
			
			<!-- Lista de datos -->
			<?php include(locate_template('partials/contacto/section-data.php')); ?>

			<!-- Espacio --> <br/>	

			<!-- Imágen -->
			<?php  
				$img_contact = isset($options['theme_img_contact']) && !empty($options['theme_img_contact']) ? $options['theme_img_contact'] : '';

				if( !empty($img_contact) ) :
			?>	<img src="<?= $img_contact; ?>" alt="tanques-fabricacion-mantenimiento" class="img-fluid d-bloc m-x-auto" />
			<?php endif; ?>


		</div> <!-- /.col-xs-12 col-sm-6 -->
		
		<!-- Formulario de Contacto -->
		<div class="col-xs-12 col-sm-6">
			
			<!-- Título --> <h2 class="titleCommon__section"> 
			<?= __( "Formulario de Contacto" , "LANG" ); ?> </h2> <br />

			<!-- Formulario -->
			<form id="form-contacto" action="" class="pageContacto__form" method="POST">

				<!-- Nombre -->
				<div class="pageContacto__form__group">
					<label for="input_name" class="">Nombres </label>
					<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombres', LANG ); ?>" required />
				</div> <!-- /.pageContacto__form__group -->

				<!-- Email -->
				<div class="pageContacto__form__group">
					<label for="input_email" class="">E-mail</label>
					<input type="email" id="input_email" name="input_email" placeholder="<?php _e( 'E-mail', LANG ); ?>" data-parsley-trigger="change" required="" data-parsley-type-message="Escribe un email válido"/>
				</div> <!-- /.pageContacto__form__group -->		

				<!-- Teléfono -->
				<div class="pageContacto__form__group">
					<label for="input_phone" class="">Teléfono</label>
					<input type="text" id="input_phone" name="input_phone" placeholder="Teléfono" data-parsley-type='digits' data-parsley-type-message="Solo debe contener números" required="" />
				</div> <!-- /.pageContacto__form__group -->

				<!-- Texto -->
				<div class="pageContacto__form__group">
					<label for="input_message" class=""> Mensaje</label>
					<textarea name="input_message" id="input_message" placeholder="<?php _e( 'Su Mensaje', LANG ); ?>" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Necesitas más de 20 caracteres" data-parsley-validation-threshold="10"></textarea>
				</div> <!-- /.pageContacto__form__group -->

				<button type="submit" id="send-form" class="btnCommon__show-more text-uppercase pull-xs-right">
					<?php _e( 'enviar' , LANG ); ?>
				</button> <!-- /.btn__send-form -->

				<!-- Limpiar Floats --> <div class="clearfix"></div>

			</form> <!-- /.pageContacto__form -->			

		</div> <!-- /.col-xs-12 col-sm-6 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Footer -->
<?php get_footer(); ?>