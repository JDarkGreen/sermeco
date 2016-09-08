<?php  
/***
**
***************************************************/
?>

<section class="sectionAptitudes">

	<!-- Visión -->
	<h3 class="text-capitalize"> <?= __("Visión:","LANG"); ?> </h3>

	<div class="item-aptitud">
		<?php  
			$text_vision = isset($options['theme_vision']) && !empty($options['theme_vision']) ? $options['theme_vision']['text'] : '#'; 

			echo apply_filters('the_content' , $text_vision );
		?>
	</div> <!-- /.item-aptitud -->

	<!-- Misión -->
	<h3 class="text-capitalize"> <?= __("Misión:","LANG"); ?> </h3>

	<div class="item-aptitud">
		<?php  
			$text_mision = isset($options['theme_mision']) && !empty($options['theme_mision']) ? $options['theme_mision']['text'] : '#'; 

			echo apply_filters('the_content' , $text_mision );
		?>
	</div> <!-- /.item-aptitud -->
	

</section> <!-- /.sectionAptitudes -->