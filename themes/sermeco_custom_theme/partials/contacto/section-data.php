<?php  
/**
** ARCHIVO PARTIAL DE CONTACTO
***************************************************************/
?>

<ul class="pageContacto__data">
	<li> <?= __("Oficina Principal","LANG"); ?> </li>
	<!-- Telefono -->
	<li>
		<?php  
			$phones = isset($options['theme_phone_text']) && !empty($options['theme_phone_text']) ? array_filter($options['theme_phone_text']) : '';

			for ( $i=0 ; $i < count($phones) ; $i++) 
			{ 
				$split = $i === (count($phones) - 1) ? '' : ' / ';
				echo $phones[$i] . $split;
			}
		?>
	</li>
	<!-- Celular -->
	<li>
		<?php  
			$celphones = isset($options['theme_cel_text']) && !empty($options['theme_cel_text']) ? array_filter($options['theme_cel_text']) : '';

			for ( $i=0 ; $i < count($celphones) ; $i++) { 
				$split = $i === count($celphones) - 1 ? '' : ' / ';
				echo $celphones[$i] . $split;
			}
		?>

	<!-- Email -->
	<li>
		E-mail: <span class="text-featured"> <?= isset($options['theme_email_text']) && !empty($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?> </span>
	</li>

	<!-- Dirección -->
	<li>
		Dir: <?= isset($options['theme_address_text']) && !empty($options['theme_address_text']) ? apply_filters( 'the_content' , $options['theme_address_text'] ) : ''; ?> 
	</li>

	<!-- Facebook -->
	<li>
		<i class="fa fa-facebook icon-facebook" aria-hidden="true"></i>

		<a href="<?= LINK_FACEBOOK; ?>" target="_blank" class="text-featured">
			<?= LINK_FACEBOOK; ?>
		</a>
	</li>
</ul>