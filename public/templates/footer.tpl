		
</main>

<footer id="footer" class="animateTransform">
    <div id="redes" class="wrapper">
        <p>S&iacute;guenos en las Redes Sociales</p>
        <ul>
            {foreach $modulos.banners.grupos_banners[0].banners as $banner}
                <li><a href="{$banner.vinculo}" target="_blank" class="icon-redes-{$banner.texto}"></a></li>
                {/foreach}
        </ul>
    </div> <!-- #redes -->
    <nav id="navFooter">
        <h2 class="notVisible">Navegación</h2>
        <ul id="menuFooter" class="wrapper"><!--
            --><li>
                <a href="home-1" title="Home">Home</a>
                <ul class="submenu">
                    <li><a href="home-1#presentacion" title="Presentaci&oacute;n">Presentaci&oacute;n</a></li>
                    <li><a href="home-1#servicios" title="&Aacute;reas especializadas">&Aacute;reas especializadas</a></li>
                    <li><a href="home-1#mundo" title="Trabajos recientes">Trabajos recientes</a></li>
                </ul>
            </li><!--
            --><li>
                <a href="servicios-4" title="Servicios">Servicios</a>
                <ul class="submenu">
                    <li><a href="servicios-4#desarrollo" title="Desarrollo web">Desarrollo web</a></li>
                    <li><a href="servicios-4#marketing" title="Markting online">Markting online</a></li>
                    <li><a href="servicios-4#diseno" title="Dise&ntilde;o y animaci&oacute;n">Dise&ntilde;o y animaci&oacute;n</a></li>
                </ul>
            </li><!--
            --><li>
                <a href="portfolio-5" title="Portfolio">Portfolio</a>
                <ul class="submenu">
                    <li><a href="portfolio-5#mundo" title="Presentaci&oacute;n">Presentaci&oacute;n</a></li>
                    <li><a href="portfolio-5#proyectos" title="Portfolio">Portfolio</a></li>
                </ul>
            </li><!--
            --><li>
                <a href="contacto-2" title="Contacto">Contacto</a>
                <ul class="submenu">
                    <li><a href="contacto-2#mapa" title="D&oacute;nde estamos">D&oacute;nde estamos</a></li>
                    <li><a href="contacto-2#id_contacto" title="Env&iacute;anos un mensaje">Env&iacute;anos un mensaje</a></li>
                </ul>
            </li><!--
            --></ul>
            {*
            <ul id="menuFooter" class="wrapper">
            {$textoSelected = ''}
            {foreach $sitio.menus[0].vinculos as $vinculo}
            {if $vinculo.selected}
            {$textoSelected = 'selected'}
            {else}
            {$textoSelected = ''}
            {/if}
            {if empty($vinculo.hijos)}
            <li class="{$textoSelected}">
            <a href="{if $vinculo.href|substr:-1:1 == '#'}#{else}{if $vinculo.href|substr:0:7 != 'http://'}/{/if}{$vinculo.href}{/if}" title="{$vinculo.texto}">{$vinculo.texto}</a>
            </li>
            {else}
            <li>
            <a href="{$vinculo.href}" title="{$vinculo.texto}">{$vinculo.texto}</a>
            <ul class="submenu">
            {foreach $vinculo.hijos as $hijo}
            {if $hijo.selected}
            {assign var='hijoSelected' value='selected'}
            {else}
            {assign var='hijoSelected' value=''}
            {/if}
            <li><a href="{$vinculo.href}{$hijo.href}" title="{$hijo.texto}">{$hijo.texto}</a></li>
            {/foreach}
            </ul>
            </li>
            {/if}
            {/foreach}
            </ul>
            *}
        <a href="#" id="backToTop" class="icon-flecha"></a>
    </nav>
    <div id="datosFooter">
        <div class="wrapper">
            {$modulos.secciones[0].contenido}
        </div>
    </div> <!-- #datosFooter -->
    <p id="copyright"><strong>Solcre Technology Solutions &copy; 2014</strong> - Todos los derechos reservados.</p>
</footer>

{literal}
    <script>

        if ($(window).width() < 768) {
            var originalDevice = 'mobile';
        } else if ($(window).width() < 980) {
            var originalDevice = 'tablet';
        } else {
            var originalDevice = 'desktop';
        }

    </script>
{/literal}


{literal}
    <script>
        //<![CDATA[
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-7865216-1', 'solcre.com');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
    //]]>
    </script>
{/literal}


</body>
</html>

