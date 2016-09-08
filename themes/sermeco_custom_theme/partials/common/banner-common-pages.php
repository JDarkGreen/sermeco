
<!-- Si existe el post u objecto -->
<?php if( isset($banner) || isset($banner_object) ) : ?>
	
	<!-- BANNER DE LA PAGINA -->
	<section class="pageCommon__banner">

		<div class="pageWrapperLayout">
	
			<!-- Conseguir el banner por defecto -->
			<?php 
				#Si es un post 
				if( isset($banner) ) :

					#Obtenemos el campo personalizado img banner
					$img_banner = get_post_meta ($banner->ID, 'input_img_banner_'.$banner->ID , true);

					#Si está vacio o tiene un número negativo entonces seteamos imágen al azar
					$img_banner = empty($img_banner) || $img_banner == -1 ? "https://unsplash.it/1920/237" : $img_banner;
				endif; 
			?>

			<figure style='background-image: url("<?= $img_banner; ?>")'>
			</figure>
			
		</div> <!-- /.pageWrapperLayout -->

	</section> <!-- /.pageCommon__banner -->

<?php endif; ?>