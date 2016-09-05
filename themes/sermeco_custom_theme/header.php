<?php  
/**
* Plantilla Archivo: Header
**/
?>
<!DOCTYPE html>
<!--[if IE 8]> <html <?php language_attributes(); ?> class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html <?php language_attributes(); ?>> <!--<![endif]-->
<head>

  	<meta charset="<?php bloginfo('charset'); ?>">
	<title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>

	<meta name="description" content="<?php bloginfo('description'); ?>">

	<meta name="author" content="">

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" />
	
	<!-- Pingbacks -->
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon and Apple Icons -->
	
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?> >

<?php
	# Extraer todas las opciones de personalización
	$options   = get_option("theme_settings");
	# Comprobar si esta desplegada la barra de Navegación
	$admin_bar = is_admin_bar_showing() ? 'mainHeader__active-bar' : '';

	# Extraemos el logo de las opciones del tema
	$logo_theme = isset($options['theme_meta_logo_text']) && !empty($options['theme_meta_logo_text']) ? $options['theme_meta_logo_text'] : IMAGES . '/logo.jpg';
?>

<!-- Contenedor Versión Desktop -->
<header class="mainHeader hidden-xs-down <?= $admin_bar; ?>">

	<!-- Layout wrapper -->
	<div class="pageWrapperLayout">

		<div class="row">
			
			<div class="col-xs-6">
				
				<!-- Logo -->
				<h1 class="logo">
					<a href="<?= site_url(); ?>" class="center-block">
						<img src="<?= $logo_theme; ?>" alt="portada-cueros-web" class="img-fluid" />
					</a>
				</h1> <!-- /.logo -->

			</div> <!-- /.col-xs-6 -->

			<div class="col-xs-6 text-xs-right">

				<!-- Header Data -->
				<span class="mainHeader__slogan">
					<!-- Icono --> 
					<i>
						<img src="<?= IMAGES ?>/icons/icon_header.png" alt="sermeco-pagina" class="img-fluid" />
					</i>
					<?= __("Estás en Sermeco SAC" , "LANG"); ?>
				</span>

				<!-- Header Links -->
				<ul class="mainHeader__links">
					<li>
						<a href="">Inicio</a>
					</li>
					<li>
						<a href="">Contáctanos</a>
					</li>
				</ul> <!-- /.mainHeader__links -->
				
			</div> <!-- /.col-xs-6 -->

		</div> 	<!-- /.row -->
		
		<!-- Menú de Navegación -->
		<nav class="mainNavigation">
			<?php 
				wp_nav_menu(
					array(
					'menu_class'     => 'main-menu text-capitalize',
					'theme_location' => 'main-menu'
				));
			?>
		</nav> <!-- /.mainNavigation -->

	</div> <!-- /.pageWrapperLayout -->

</header> <!-- /.mainHeader  -->



