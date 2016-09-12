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

				<button type="submit" id="send-form" class="btnSendEmail text-uppercase pull-xs-right">
					<?php _e( 'enviar' , LANG ); ?>
				</button> <!-- /.btn__send-form -->

				<!-- Limpiar Floats --> <div class="clearfix"></div>

			</form> <!-- /.pageContacto__form -->			

		</div> <!-- /.col-xs-12 col-sm-6 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout -->

<!-- Mapa -->
<section class="pageContacto__map">
	<?php if( ( isset($options['theme_lat_coord']) and !empty($options['theme_lat_coord']) ) && ( isset($options['theme_long_coord']) and !empty($options['theme_long_coord']) ) ) : 
	?>
		<div id="canvas-map"></div>
	<?php endif; ?>
</section> <!-- /.pageContacto__map -->

<?php  
	#Incluir plantilla de facebook
	include( locate_template('partials/social/section-facebook.php') );
?>

<!-- Script Google Mapa -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNMUy9phyQwIbQgX3VujkkoV26-LxjbG0"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<!-- Scripts Solo para esta plantilla -->
<?php 
	if( ( isset($options['theme_lat_coord']) and !empty($options['theme_lat_coord']) ) && ( isset($options['theme_long_coord']) and !empty($options['theme_long_coord']) ) ) : 

	#Zoom de mapa
	$zoom_mapa = isset( $options['theme_zoom_mapa'] ) && !empty( $options['theme_zoom_mapa'] ) ? $options['theme_zoom_mapa'] : 16;

?>

	<script type="text/javascript">	
		<?php  
			$lat = $options['theme_lat_coord'];
			$lng = $options['theme_long_coord'];
		?>
	    var map;
	    var lat = <?= $lat ?>;
	    var lng = <?= $lng ?>;
	    function initialize() {
	      //crear mapa
	      map = new google.maps.Map(document.getElementById('canvas-map'), {
	        center: {lat: lat, lng: lng},
	        zoom  : <?= $zoom_mapa; ?>,
	      });
	      //infowindow
	      <?php  

	      	/*****/
	      	$default_markup = "Sermeco <br/>";
	      	$default_markup .= "Calle Las tapadas 131 <br/>";
	      	$default_markup .= "Rímac Lima - Perú";

	      	if ( isset($options['theme_text_markup_map']) and !empty($options['theme_text_markup_map']) ) :
	      		$contenido_markup = trim( $options['theme_text_markup_map'] );

	      		$contenido_markup = !empty($contenido_markup) ? apply_filters("the_content" , $options['theme_text_markup_map']  ) : $default_markup;
	      	else:

	      		$contenido_markup = $default_markup;

	      	endif;
	      ?>

	      var contenido_markup = <?= json_encode( $contenido_markup ) ?>;

	      var infowindow  = new google.maps.InfoWindow({
	        content: contenido_markup
	      });
	      //icono
	      //var icono = "<?= IMAGES ?>/icon/contacto_icono_mapa.jpg";
	      //crear marcador
	      marker = new google.maps.Marker({
	        map      : map,
	        draggable: false,
	        animation: google.maps.Animation.DROP,
	        position : {lat: lat, lng: lng},
	        title    : "<?php _e(bloginfo('name') , LANG )?>",
	        //icon     : "<?= IMAGES . '/icon/icon_map.png' ?>",
	      });
	      //marker.addListener('click', toggleBounce);
	      marker.addListener('click', function() {
	        infowindow.open( map, marker);
	      });
	    }
	    google.maps.event.addDomListener(window, "load", initialize);
	</script>

<?php endif; ?>

<!-- Footer -->
<?php get_footer(); ?>