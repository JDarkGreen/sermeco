var j = jQuery.noConflict();

/**
* Funcion de Condicionar ancho de navegador
**/

function getWidthBrowser()
{
	return j(window).width();
}




(function($){
/*|----------------------------------------------------------------------|*/

	j(document).on('ready',function(){

		
		/*|----------------------------------------------------------------------|*/
		/*|-----  SLIDEBAR MENU NAVEGACION RESPONSIVE -----|*/
		/*|----------------------------------------------------------------------|*/

		// Initialize Slidebars
		var controller = new slidebars();
		controller.init();

		//Eventos

		//Abrir contenedores
		j(".js-toggle-mobile-nav").on( 'click', function ( event ) {
		  // Stop default action and bubbling
		  event.stopPropagation();
		  event.preventDefault();

		  //Su contenedor id 
		  var id_container = this.getAttribute('data-id');

		  // Toggle the Slidebar with id 
		  controller.toggle( id_container );
		});

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

/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL ITEMS OWN CAROUSEL - SETEAR PARAMETROS   -----|*/
		/*|----------------------------------------------------------------------|*/		

		if( j(".js-carousel-gallery").length )
		{
			j(".js-carousel-gallery").each(function(){

				/* Carousel */
				var current = j(this);

				/* Valor de Items */
				var Items  = current.attr('data-items') !== null && typeof(current.attr('data-items') ) !== "undefined" ? current.attr('data-items') : 3;

				/* Valor de Items Responsive */
				var Itemsresponsive  = current.attr('data-items-responsive') !== "" && typeof(current.attr('data-items-responsive') ) !== "undefined" ? current.attr('data-items-responsive') : Items;

				/* Valor de Márgenes */
				var Margins = current.attr('data-margins') !== null && typeof(current.attr('data-margins') ) !== "undefined"  ? current.attr('data-margins') : 10;	

				/* Habilitar autoplay */
				var Autoplay = current.attr('data-autoplay') !== null && typeof( current.attr('data-autoplay') ) !== "undefined"  && current.attr('data-autoplay') !== "false" ? true : false;
				
				/* Habilitar time autoplay */
				var timeAutoplay = current.attr('data-timeautoplay') !== null && typeof( current.attr('data-timeautoplay') ) !== "undefined"  && current.attr('data-timeautoplay') !== "false" ? current.attr('data-timeautoplay') : 2500;

				/* Habilitar dots */
				var Dot = current.attr('data-dots') !== null && typeof( current.attr('data-dots') ) !== "undefined" && current.attr('data-dots') !== "false" ? true : false;

				/* Generar el carousel */
				current.owlCarousel({
					items          : parseInt( Items ),
					lazyLoad       : false,
					loop           : true,
					margin         : parseInt( Margins ),
					nav            : false,
					autoplay       : Autoplay,
					responsiveClass: true,
					mouseDrag      : true,
					autoplayTimeout: parseInt( timeAutoplay ),
					fluidSpeed     : 2000,
					smartSpeed     : 2000,
					dots           : Dot,
					responsive:{
				      	320:{
				            items: parseInt( Itemsresponsive )
				        },
				        650:{
				            items: parseInt( Items )
				        },
			    	}	
				});
			
			/* end each */
			});
		/* end conditional */
		}

		/*|°°------------- Flechas del carousel ---------------°°|*/
		//prev carousel
		j(".js-carousel-prev").on('click',function(e){ 
			e.preventDefault();
			var slider = j(this).attr('data-slider');	
			j("#"+slider).trigger('prev.owl.carousel' , [900] );
		});
		//next carousel
		j(".js-carousel-next").on('click',function(e){ 
			e.preventDefault();
			var slider = j(this).attr('data-slider');	
			j("#"+slider).trigger('next.owl.carousel' , [900] );
		});


		/*|----------------------------------------------------------------------|*/
		/*|-----  FANCYBOX GALERIAS   -----|*/
		/*|----------------------------------------------------------------------|*/

		j("a.gallery-fancybox").fancybox({
			'overlayShow': false,
			'openEffect' : 'elastic',
			'closeEffect': 'elastic',
			'openSpeed'  : 300,
			'closeSpeed' : 300,
		});


		/*|----------------------------------------------------------------------|*/
		/*|-----  VALIDAR FORMULARIO   -----|*/
		/*|----------------------------------------------------------------------|*/

		if( j('#form-contacto').length )
		{
			var formulario = j('#form-contacto');

			formulario.parsley();

			formulario.submit( function(e){
				e.preventDefault();
				//Subir el formulario mediante ajax
				j.post( url + '/email/enviar.php', 
				{ 
					name   : j("#input_name").val(),
					email  : j("#input_email").val(),
					phone  : j("#input_phone").val(),
					message: j("#input_message").val(),
				},function(data){

					alert( data );

					j("#input_name").val("");
					j("#input_email").val("");
					j("#input_phone").val("");
					j("#input_message").val("");

					window.location.reload(false);
				});			
			}); 

		}






	/*|- end of document -|*/
	});

/*|----------------------------------------------------------------------|*/
})(jQuery);