var j = jQuery.noConflict();

/**
* Funciones Comunes
**/

function customThemeTabs()
{
	if( j(".js-tabs-panel-backend").length )
	{
		j('.js-tabs-panel-backend').tabtab({
			tabMenu          : '.tabs__menu',             // direct container of the tab menu items
			tabContent       : '.tabs__content',       // direct container of the tab content items
			next             : '.tabs-controls__next',       // next slide trigger
			prev             : '.tabs-controls__prev',       // previous slide trigger
			
			startSlide       : 1,                      // starting slide on pageload
			arrows           : true,                       // keyboard arrow navigation
			dynamicHeight    : true,                // if true the height will dynamic and animated.
			useAnimations    : true,                // disables animations.
			
			//easing           : 'ease',                     // http://julian.com/research/velocity/#easing
			//speed            : 350,                         // animation speed
			//slideDelay       : 0,                      // delay the animation
			//perspective      : 1200,                  // set 3D perspective
			//transformOrigin  : 'center top',      // set the center point of the 3d animation
			//perspectiveOrigin: '50% 50%',       // camera angle
			
			animateHeight    : !0,
			fixedHeight      : !1,
			scale            : 1,
			rotateX          : 0,
			speed            : 500,
			transformOrigin  : "center left",
			rotateY          : 90,
			easing           : "easeInOutCubic",
			translateX       : 0

		});
	}	
}


(function($){

	/**
	* Eventos al cargar el documento
	*/
	j(document).on("ready",function(){

		/**
		* Utilizar libreria tabtab
		*/
		customThemeTabs();

		/*
		* Utilizando libreria modal tingle
		*/
		// instanciate new modal
		/*var modalBigContent = new tingle.modal({
			footer : true,
		});

		//Obtener Boton
    	var button_modal = j('.js-tingle-modal');

    	//Al hacer click 
    	button_modal.on("click", function(e){
    		e.preventDefault(); //detener eventos por defecto
    		//abrir modal segun su target
    		modalBigContent.open();
    		
    		var target_modal_content = j( '#' + j(this).attr("data-target") );
    		
   	 		modalBigContent.setContent( target_modal_content.html() );
    		
    		modalBigContent.addFooterBtn('Guardame Inmediatamente', 'tingle-btn tingle-btn--danger', function() {
		    		modalBigContent.close();
			});
    	
    	});*/


	});

	/**
	**/

})(jQuery);