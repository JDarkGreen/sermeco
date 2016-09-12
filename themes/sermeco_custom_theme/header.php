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


<?php 
	$w_browser = '<script>document.write(window.outerWidth); </script>'; 
	$w_browser = intval( $w_browser );
?>

	
	<!-- Menu lateral Izquierda -->
	<div off-canvas="id-container-menu left reveal">
		<aside class="sidebarMobile">

			<!-- Logo -->
			<h1 class="logo">
				<a href="<?= site_url() ?>">
					<img src="<?= IMAGES ?>/logo.jpg" alt="<?= "-logo-" . bloginfo('name') ?>" class="img-fluid center-block" />
				</a>
			</h1> <!-- /.logo -->

			<?php include( locate_template('partials/home/navigation.php') ); ?>

		</aside> <!-- /.sidebarMobile -->
	</div>	


	<!-- Menu lateral Derecha -->
	<div off-canvas="id-container-post right shift">
		derecha
	</div>



<!-- Contenedor Versión Mobile -->
<header class="mainHeader hidden-sm-up <?= $admin_bar; ?>" canvas="">
	<!-- Icono abrir menu lateral -->
	<div class="icon-header">
		<i class="js-toggle-mobile-nav fa fa-bars" data-id="id-container-menu" aria-hidden="true"></i>
	</div><!-- /.icon-header -->

	<!-- Logo -->
	<h1 class="logo">
		<a href="<?= site_url() ?>">
			<img src="<?= IMAGES ?>/logo.jpg" alt="<?= "-logo-" . bloginfo('name') ?>" class="img-fluid center-block" />
		</a>
	</h1> <!-- /.lgoo -->	

	<!-- Icono abrir menu lateral derecha -->
	<div class="icon-header">
		<i class="js-toggle-mobile-nav fa fa-bars" data-id="id-container-post" aria-hidden="true"></i>
	</div><!-- /.icon-header -->	

</header> <!-- /.mainHeader hidden-sm-up-->


<!-- Contenedor canvas wrapper para slider mobile -->
<div canvas="container">

	<!-- Contenedor Versión Desktop -->
	<header class="mainHeader hidden-xs-down <?= $admin_bar; ?>">

		<!-- Layout wrapper -->
		<div class="pageWrapperLayout">
			
			<!-- Contenedor Superior -->
			<div class="mainHeader__top-content">

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
								<a href="<?= site_url(); ?>">Inicio</a>
							</li>
							<li>
								<?php  
									$page_contacto = get_page_by_title('contactenos');
								?>
								<a href="<?= get_permalink( $page_contacto->ID ); ?>">Contáctanos</a>
							</li>
						</ul> <!-- /.mainHeader__links -->
						
					</div> <!-- /.col-xs-6 -->

				</div> 	<!-- /.row -->

			</div> <!-- /.mainHeader__top-content -->
				
			<!-- Menú de Navegación -->
			<?php include( locate_template('partials/home/navigation.php') ); ?>

		</div> <!-- /.pageWrapperLayout -->

	</header> <!-- /.mainHeader  -->









