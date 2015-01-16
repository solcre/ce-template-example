<div id="sliderPpal-wrapper" class="ms-fullscreen-template animateTransform">
    <!-- masterslider -->
    <div class="master-slider ms-skin-default" id="sliderPpal">
        {$contador = 1}
        {foreach $modulos.secciones[1].subSecciones as $SubSeccion}
            <div class="ms-slide slide-{$SubSeccion@iteration} color-{$contador}">
                <div class="slide-pattern"></div>
                <img src="/css/masterslider/blank.gif" data-src="{$sitio.images_path}galeria/{$SubSeccion.foto.src}" alt="Columnis 5.0">
                <p class="ms-layer titulo" 
                   data-type="text" 
                   data-effect="top(45)" 
                   data-duration="3400" 
                   data-ease="easeOutExpo">
                    {$SubSeccion.titulo}
                </p>
                <p class="ms-layer strong"
                   data-type="text" 
                   data-effect="top(65)" 
                   data-duration="3400" 
                   data-delay="400" 
                   data-ease="easeOutExpo">
                    <strong>{$SubSeccion.descripcion}</strong>
                </p>
                <p class="ms-layer texto" 
                   data-type="text" 
                   data-effect="bottom(45)" 
                   data-duration="3400" 
                   data-delay="800" 
                   data-ease="easeOutExpo">
                    {$SubSeccion.subSecciones[0].descripcion}
                </p>
                <div class="ms-layer vinculo" 
                     data-type="text" 
                     data-effect="bottom(45)" 
                     data-duration="3400" 
                     data-delay="1000" 
                     data-ease="easeOutExpo">
                    <a href="{$SubSeccion.subSecciones[0].vinculo}" class="boton">{$SubSeccion.vinculo}</a>
                </div>
            </div> <!-- .slide -->
            {if $contador == 4}
                {$contador = 1}
            {else}
                {$contador = $contador + 1}
            {/if}
        {/foreach}
    </div> <!-- #sliderPpal -->
</div>
<!-- end of template -->
