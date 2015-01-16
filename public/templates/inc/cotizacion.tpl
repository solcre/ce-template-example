{*
    <div id="cotizacion" class="area centerText callToAction">
        <div class="foto" style="background-image:url(images/galeria/{$seccion.foto.src});"></div>
        <div class="wrapper">
            <h2>{$seccion.titulo}</h2>
            <p>{$seccion.descripcion}</p>
            
            <form onsubmit="return false;" action="modulos/contacto/ajax/contacto.php" name="contacto" id="cotizacionForm" method="post" class="class">
                <input id="id_check" name="contacto[check]" value="{$formularios.checks.contacto}" type="hidden" />
                <div class="columnas-2">
                    <div class="columna">
                        <strong class="titulo">Datos personales</strong>
                        <input id="cotizacion-nombre" type="text" value="" name="contacto[nombre]" class="validate-noVacio required" placeholder="Nombre completo" />
                        <input id="cotizacion-telefono" type="tel" value="" name="contacto[telefono]" class="validate-noVacio required" placeholder="Tel&eacute;fono" />
                        <input id="cotizacion-email" type="email" value="" name="contacto[email]" class="validate-email required email" placeholder="Email" />
                        <input id="cotizacion-empresa" type="text" value="" name="contacto[empresa]" class="validate-noVacio required" placeholder="Empresa" />

                        <strong class="titulo">Presupuesto Disponible</strong>
                        <span id="sliderValues">Entre <strong>usd <span class="min">500</span></strong> y <strong>usd <span class="max">1500</span></strong></span>
                        <div id="cotizacionSlider"></div>
                    </div> <!-- .columna -->

                    <div class="columna">
                        <strong class="titulo">Tipo de proyecto</strong>
                        <div class="radio">
                            <label for="cotizacion-tipo-sitio">Sitio Web</label>
                            <input type="radio" id="cotizacion-tipo-sitio" name="contacto[tipo]" value="Sitio web">
                        </div><!--
                        --><div class="radio">
                            <label for="cotizacion-tipo-webapp">Aplicaci&oacute;n web</label>
                            <input type="radio" id="cotizacion-tipo-webapp" name="contacto[tipo]" value="Aplicaci&oacute;n web">
                        </div><!--
                        --><div class="radio">
                            <label for="cotizacion-tipo-mobileapp">Aplicaci&oacute;n Mobile</label>
                            <input type="radio" id="cotizacion-tipo-mobileapp" name="contacto[tipo]" value="Aplicaci&oacute;n mobile">
                        </div><!--
                        --><div class="radio">
                            <label for="cotizacion-tipo-grafico">Dise&ntilde;o Gr&aacute;fico</label>
                            <input type="radio" id="cotizacion-tipo-grafico" name="contacto[tipo]" value="Dise&ntilde;o gr&aacute;fico">
                        </div><!--
                        --><div class="radio">
                            <label for="cotizacion-tipo-emailmarketing">Email Marketing</label>
                            <input type="radio" id="cotizacion-tipo-emailmarketing" name="contacto[tipo]" value="Email marketing">
                        </div><!--
                        --><div class="radio">
                            <label for="cotizacion-tipo-publicidad">Publicidad Online</label>
                            <input type="radio" id="cotizacion-tipo-publicidad" name="contacto[tipo]" value="Publicidad online">
                        </div><!--
                        --><div class="radio">
                            <label for="cotizacion-tipo-otros">Otros</label>
                            <input type="radio" id="cotizacion-tipo-otros" name="contacto[tipo]" value="Otros">
                        </div>

                        <strong class="titulo">Descripci&oacute;n</strong>
                        <textarea id="cotizacion-descripcion" name="contacto[mensaje]" cols="32" rows="5" placeholder="Escriba una breve descripci&oacute;n del proyecto"></textarea>
                    </div> <!-- .columna -->
                </div> <!-- .columnas-2 -->
                <button type="button" id="cotizacion-submit" name="cotizacion-submit" class="boton">Solicitar cotizaci&oacute;n</button>

                <div class="msj_contacto_iefix">
                    <div class="msj_contacto">
                        <span></span>
                    </div>
                </div>

            </form>
                
            <script>

                $("#cotizacionSlider").slider({
                    range: true,
                    values: [500, 1500],
                    min: 0,
                    max: 3000,
                    step: 500,
                    change: function() {
                        $('#sliderValues .min').html($("#cotizacionSlider").slider("values", 0));
                        $('#sliderValues .max').html($("#cotizacionSlider").slider("values", 1));
                    }
                });
                $('#cotizacion input[type=radio]').prettyCheckboxes();
                
                {*
                jQuery(function() {
                    ColumnisApi.ModuleApi.Contacto.setupFormDefault('#cotizacionForm', {
                        successMessageId: 4,
                        errorMessageId: 5
                    });
                    $('#cotizacionForm').bind('formSent', function() {
                        //Analytics.goals.contacto.enviar();
                    });
                });
                    
            </script>
            
        </div> <!-- .wrapper -->
    </div> <!-- #cotizacion -->
*}