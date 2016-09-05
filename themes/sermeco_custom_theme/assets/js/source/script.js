var j = jQuery.noConflict();

(function($){
/*|----------------------------------------------------------------------|*/

	j(document).on('ready',function(){

		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL HOME  LIBRERIA OWL CAROUSEL -----|*/
		/*|----------------------------------------------------------------------|*/

		//Carousel Home
		var carouselHome = j("#slider-home");

		carouselHome.owlCarousel({
			items          : parseInt( carouselHome.attr('data-items') ),
			loop           : true,
			margin         : 0,
			nav            : true,
			responsiveClass: true,
			mouseDrag      : true,
			dots           : true,
			fluidSpeed     : 2500,
			smartSpeed     : 450,
			animateOut     : 'fadeOut',
			animateIn      : 'fadeIn'
		});


	/*|- end of document -|*/
	});

/*|----------------------------------------------------------------------|*/
})(jQuery);