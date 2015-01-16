        <header id="header" class="animateLeft">
            <div class="wrapper clearFix">
                <div id="headerTop" class="animateTransform clearFix">
                    <h1 id="logo"><a href="http://www.solcre.com/"><strong>Solcre</strong> Technology Solutions</a></h1>
                    <a href="#" id="menuBt"></a>
                </div>
                <nav id="nav">
                    <h2 class="notVisible">Navegación</h2>
                    <ul id="menu">
                    	{$textoSelected = ''}
                        {foreach $sitio.menus[0].vinculos as $vinculo}
                            <li><a href="{if $vinculo.href|substr:-1:1 == '#'}#{else}{if $vinculo.href|substr:0:7 != 'http://'}/{/if}{$vinculo.href}{/if}" title="{$vinculo.texto}">{$vinculo.texto}</a></li>
                        {/foreach}
                    </ul>
                </nav>
                <a href="#" id="menuClose"></a>
            </div> <!-- .wrapper -->
            <nav id="submenuDesktop" class="desktop">
                <h2 class="notVisible">Men&uacute; secundario</h2>
                <ul class="submenu wrapper">
                    {foreach $modulos.secciones[1].subSecciones[0].subSecciones as $hijo}
                        <li><a href="#seccion-{$hijo.id}" title="{$hijo.vinculo}">{$hijo.vinculo}</a></li>
                    {/foreach}
                </ul>
            </nav>
        </header>

        <main class="animateTransform">