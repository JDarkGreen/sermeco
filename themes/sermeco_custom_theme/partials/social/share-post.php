<?php  
/***
** ARCHIVO PARTIAL QUE MUESTRA EL LINK COMPARTIR DE POST
*************************/

	$current_share = isset($current_share) && !empty($current_share) ? $current_share : LINK_FACEBOOK; 

?>

<div class="section-share-post">
	
	COMPARTIR EN:

	<a href="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=<?= $current_share; ?>' , '_blank' , 'width=400 , height=500' ); void(0);" target="_blank" class="text-featured">

		<i class="fa fa-facebook icon-facebook" aria-hidden="true"></i>

	</a>

</div>