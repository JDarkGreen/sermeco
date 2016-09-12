<?php  
/***
** ARCHIVO PARTIAL QUE MUESTRA LA NAVEGACIÓN PRINCIPAL
*************************/

?>
<nav class="mainNavigation">
	<?php 
		wp_nav_menu(
			array(
			'menu_class'     => 'main-menu text-capitalize',
			'theme_location' => 'main-menu'
		));
	?>
</nav> <!-- /.mainNavigation -->
