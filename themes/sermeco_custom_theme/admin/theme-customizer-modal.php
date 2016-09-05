<?php  /**
** Archivo de creación de opciones del tema, donde configuraremos parametros
** para setearlos despues.
**/

$themename = __( get_bloginfo('name') , LANG ); //Nombre de la opcion

//definir prefijo
define("PREFIX", "ser" );

/**
* Agregar Hooks
**/

/**
*Esta acción se utiliza para agregar opciones de menú y submenús adicionales a la estructura de menús del panel de administración . Se ejecuta después de que la estructura básica del menú del panel de administración está en su lugar .
**/
add_action( 'admin_menu', 'custom_theme_add_admin_menu' );
/**
*admin_init se dispara antes de que cualquier otro gancho cuando un usuario accede a la zona de administración . Este gancho no proporciona ningún parámetro , por lo que sólo se puede utilizar para devolución de llamada una función especificada 
**/
add_action( 'admin_init', 'custom_theme_settings_init' );

/**
* FUNCION CALLBACK DE AGREGAR MENU AL PANEL
**/
function custom_theme_add_admin_menu() 
{ 
	add_menu_page( 'Optiones tema: ' . get_bloginfo("name") , 'Opciones Tema' , 'manage_options', 'optiones_tema', 'custom_theme_options_page' , '' , 2 );

}

/**
* FUNCION CALLBACK DE custom_theme_settings_init
**/
function custom_theme_settings_init() 
{ 
	/**
	* REGISTRO un ajuste de devolución de llamada y su desinfección .
	register_setting( $option_group, $option_name, $sanitize_callback )
	*/

	//panel redes sociales
	register_setting( 'customThemePage' , 'theme_settings' );
	//panel telefonos
	register_setting( 'customThemePageEmpresa' , 'theme_settings' );
	//panel información Header
	register_setting( 'customThemePageHeader' , 'theme_settings' );	
	//panel información Nosotros
	register_setting( 'customThemePageNosotros' , 'theme_settings' );
	//panel Footer
	register_setting( 'customThemePageFooter' , 'theme_settings' );
	//panel contacto mapa
	register_setting( 'customThemePageContactoMapa' , 'theme_settings' );
	//panel rewrite url
	register_setting( 'customThemeRewriteUrl' , 'theme_settings' );
	//panel proyectos
	register_setting( 'customThemeProyects' , 'theme_settings' );

	/**
	* Incluir archivo de Configuracion de Secciones y campos , inputs y texarea
	**/
	include_once("template-add-fields-custom.php");
}



/**
* Mostrardo el renderizado final y las opciones del tema
**/
function custom_theme_options_page()
{ ?>
	<form id="form-options" action='options.php' method='post'>

		<h2>Opciones tema:</h2>

		<!-- Contenedor Global Secciones de Panel -->
		<div class="sectiontabOptions js-modal-panel-backend container tingle-content-wrapper content">

			<!-- Menu -->
			<div class="menu_modal">		
				<button class="btn btn--primary js-tingle-modal" data-target="target-content-1">
					<?= __("Customizar Url" , LANG ); ?>
				</button>
				
				<button class="btn btn--primary js-tingle-modal" data-target="target-content-2">
					<?= __("Redes Sociales" , LANG ); ?> 
				</button>
				
				<button class="btn btn--primary js-tingle-modal" data-target="target-content-3">
					<?= __("Personalización Nosotros" , LANG ); ?>
				</button>
				
				<button class="btn btn--primary js-tingle-modal" data-target="target-content-4">
					<?= __("Personalización Empresa" , LANG ); ?> 
				</button>
				
				<button class="btn btn--primary js-tingle-modal" data-target="target-content-5">
					<?= __("Personalización Contacto - Mapa" , LANG ); ?> 
				</button>
				
				<button class="btn tingle-btn--default js-tingle-modal" data-target="target-content-6">
					 <?= __("Personalización Header" , LANG ); ?>
				</button>
				
				<button class="btn tingle-btn--default js-tingle-modal" data-target="target-content-7">
					<?= __("Personalización Footer" , LANG ); ?> 
				</button>

				<button class="btn tingle-btn--default js-tingle-modal" data-target="target-content-8">
					<?= __("Extra: Proyectos" , LANG ); ?>
				</button>

				<?php submit_button(); ?>

			</div> <!-- menu modal -->

            <!-- CONTENEDOR GENERAL DE PANEL -->
            <div class="modal__content content">

                <!-- PANEL  REWRITE URL -->
                <div class="tingle-demo tingle-demo-big" id="target-content-1">
	                <?php
						settings_fields( 'customThemeRewriteUrl' );
						do_settings_sections( 'customThemeRewriteUrl' );
					?>
				</div> <!-- /md-modal -->

				<!-- PANEL REDES SOCIALES -->
                <div class="tingle-demo tingle-demo-big" id="target-content-2">
                	<?php
						settings_fields( 'customThemePage' );
						do_settings_sections( 'customThemePage' );
					?>
                </div> <!-- /md-modal -->

                <!-- PANEL PAGE NOSOTROS -->
                <div class="tingle-demo tingle-demo-big" id="target-content-3">
                	<?php
						settings_fields( 'customThemePageNosotros' );
						do_settings_sections( 'customThemePageNosotros' );
					?>
                </div> <!-- /md-modal -->


            	<!-- PANEL EMPRESA -->
                <div class="tingle-demo tingle-demo-big" id="target-content-4">
                	<?php
						settings_fields( 'customThemePageEmpresa' );
						do_settings_sections( 'customThemePageEmpresa' );
					?>
                </div> <!-- /md-modal -->

                <!-- PANEL  CONTACTO MAPA -->
                <div class="tingle-demo tingle-demo-big" id="target-content-5">
                	<?php
						settings_fields( 'customThemePageContactoMapa' );
						do_settings_sections( 'customThemePageContactoMapa' );
					?>
                </div> <!-- /md-modal -->

            	<!-- PANEL HEADER -->
            	<div class="tingle-demo tingle-demo-big" id="target-content-6">
                	<?php
						settings_fields( 'customThemePageHeader' );
						do_settings_sections( 'customThemePageHeader' );
					?>
                </div> <!-- /md-modal -->

            	<!-- PANEL FOOTER -->
                <div class="tingle-demo tingle-demo-big" id="target-content-7">
                	<?php
						settings_fields( 'customThemePageFooter' );
						do_settings_sections( 'customThemePageFooter' );
					?>
                </div> <!-- /md-modal -->

            	<!-- PANEL PROYECTOS EXTRA -->
                <div class="tingle-demo tingle-demo-big" id="target-content-8">
                	<?php
						settings_fields( 'customThemeProyects' );
						do_settings_sections( 'customThemeProyects' );
					?>
                </div> <!-- /md-modal -->


            </div> <!-- /.modal__content content -->


		</div> <!-- / sectiontabOptions js-modal-panel-backend-->

	
	</form>

<?php
}


?>s