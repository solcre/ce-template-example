<header id="header" class="animateLeft">
    <div class="wrapper clearFix">
        <div id="headerTop" class="animateTransform clearFix">
            <h1 id="logo"><a href="http://www.solcre.com/"><strong>Solcre</strong> Technology Solutions</a></h1>
            <a href="#" id="menuBt"></a>
        </div>
        <nav id="nav">
            <h1 class="notVisible">Navegaci&oacute;n</h1>
            <ul id="menu">
                <li class="selected">
                    <a href="/home-1" title="Home">Home</a>
                    <ul class="submenu notDesktop">
                        <li><a href="#presentacion" title="Presentaci&oacute;n">Presentaci&oacute;n</a></li>
                        <li><a href="#servicios" title="&Aacute;reas especializadas">&Aacute;reas especializadas</a></li>
                        <li><a href="#mundo" title="Trabajos recientes">Trabajos recientes</a></li>
                    </ul>
                </li>
                <li><a href="/servicios-4" title="Servicios">Servicios</a></li>
                <li><a href="/portfolio-5" title="Portfolio">Portfolio</a></li>
                <li><a href="/contacto-2" title="Contacto">Contacto</a></li>
            </ul>
        </nav>
        <a href="#" id="menuClose"></a>
    </div> <!-- .wrapper -->
    <nav id="submenuDesktop" class="desktop">
        <h1 class="notVisible">Men&uacute; secundario</h1>
        <ul class="submenu wrapper">
            <li><a href="#presentacion" title="Presentaci&oacute;n">Presentaci&oacute;n</a></li>
            <li><a href="#servicios" title="&Aacute;reas especializadas">&Aacute;reas especializadas</a></li>
            <li><a href="#mundo" title="Trabajos recientes">Trabajos recientes</a></li>
        </ul>
    </nav>
</header>
{*
<header id="header" class="animateLeft">
<div class="wrapper clearFix">
<div id="headerTop" class="animateTransform clearFix">
<h1 id="logo"><a href="http://www.solcre.com/"><strong>Solcre</strong> Technology Solutions</a></h1>
<a href="#" id="menuBt"></a>
</div>
<nav id="nav">
<h1 class="notVisible">Navegación</h1>
<ul id="menu">
{$textoSelected = ''}
{foreach $sitio.menus[0].vinculos as $vinculo}
{if $vinculo.selected}
<li class="selected">
<a href="{if $vinculo.href|substr:-1:1 == '#'}#{else}{if $vinculo.href|substr:0:7 != 'http://'}/{/if}{$vinculo.href}{/if}" title="{$vinculo.texto}">{$vinculo.texto}</a>
<ul class="submenu notDesktop">
{foreach $vinculo.hijos as $hijo}
{if $hijo.selected}
{assign var='hijoSelected' value='selected'}
{else}
{assign var='hijoSelected' value=''}
{/if}
<li><a href="{$hijo.href}" title="{$hijo.texto}">{$hijo.texto}</a></li>
{/foreach}
</ul>
</li>
{else}
<li><a href="{if $vinculo.href|substr:-1:1 == '#'}#{else}{if $vinculo.href|substr:0:7 != 'http://'}/{/if}{$vinculo.href}{/if}" title="{$vinculo.texto}">{$vinculo.texto}</a></li>
{/if}
{/foreach}
</ul>
</nav>
<a href="#" id="menuClose"></a>
</div> <!-- .wrapper -->
<nav id="submenuDesktop" class="desktop">
<h1 class="notVisible">Men&uacute; secundario</h1>
<ul class="submenu wrapper">
{foreach $sitio.menus[0].vinculos as $vinculo}
{if $vinculo.selected}
{foreach $vinculo.hijos as $hijo}
<li><a href="{$hijo.href}" title="{$hijo.texto}">{$hijo.texto}</a></li>
{/foreach}
{/if}
{/foreach}
</ul>
</nav>
</header>
*}
<main class="animateTransform">