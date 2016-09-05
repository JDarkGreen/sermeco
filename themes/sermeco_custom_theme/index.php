<!-- Header -->
<?php 
	get_header(); 

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");
?>


<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout">
	
	<?php  
		#Incluir plantilla de Slider Home
		include( locate_template("partials/slider-home/slider-home.php") );
	?>


</div> <!-- /.pageWrapperLayout -->


<!-- Footer -->
<?php get_footer(); ?>
