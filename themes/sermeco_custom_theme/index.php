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

		#Incluir plantilla de Carousel de Servicios
		include( locate_template("partials/home/slider-services.php") );
	?>
</div> <!-- /.pageWrapperLayout -->

<?php   #Incluir plantilla de Compromiso - Presentación
	include( locate_template("partials/home/section-presentation.php") );
?>	




<!-- Footer -->
<?php get_footer(); ?>
