<?php  
/**
* Archivo Footer 
**/

#Obtener las opciones de personalización
$options = get_option( 'theme_settings' );

#Incluir plantilla de Clientes
include( locate_template("partials/carouseles/section-clients.php") );

?>	

	<footer class="mainFooter text-xs-center">
		<?php  
			#Extraer menu de footer
			wp_nav_menu(
				array(
				'menu_class'     => 'menu-footer text-capitalize',
				'theme_location' => 'footer-menu'
			));
		?>
	</footer> <!-- /.mainFooter -->

	<?php wp_footer(); ?>

	<script> var url = "<?= THEMEROOT ?>"; </script>

</body>
</html>

