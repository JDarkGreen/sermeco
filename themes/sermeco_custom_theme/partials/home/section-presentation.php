<?php  
/***
** ARCHIVO PARTIAL QUE MUESTRA LA PRESENTACIÓN EN INICIO
*************************/

?>

<section class="pageInicio__presentation">

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout">

		<div class="row">
			
			<div class="col-xs-12 col-sm-3">
				
				<!-- Titulo -->
				<h2> <?=  __("Nuestro Compromiso","LANG"); ?> </h2>
			
			</div> <!-- /.col-xs-12 col-sm-3 -->

			
			<div class="col-xs-12 col-sm-9">
				
				<div class="content-presentation">
					<?php  
						#Extraer opciones de presentación 
						$text_presentation = isset($options['theme_meta_presentacion']) ? $options['theme_meta_presentacion'][0] : '';

						echo apply_filters( 'the_content' , $text_presentation );
					?>
				</div> <!-- /.content-presentation -->

				<?php  
					#Incluir plantilla de facebook
					include( locate_template('partials/social/section-facebook.php') );
				?>
				
			</div> <!-- /.col-xs-12 col-sm-9 -->		
	
		</div> <!-- /.row -->

	</div> <!-- /.pageWrapperLayout -->
	
</section> <!-- /.pageInicio__presentation -->