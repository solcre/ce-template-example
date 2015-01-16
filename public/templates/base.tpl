<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>{$sitio.head.fixed.title}{$sitio.head.title}</title>
        <meta name="robots" content="index,follow" />
        <meta name="description" content="{$sitio.head.fixed.description}{$sitio.head.description}" />
        <meta name="keywords" content="{$sitio.head.fixed.keywords}{$sitio.head.keywords}" />
        <meta name="verify-v1" content="{$sitio.head.verify}" />
        <meta name="google-site-verification" content="{$sitio.head.verify}" />
        <meta name="msvalidate.01" content="" />
        <link rel="apple-touch-icon" href="/images/custom_icon.png"/>
        <link rel="apple-touch-icon-precomposed" href="/images/custom_icon.png"/>
        <link rel="apple-touch-startup-image" href="/images/startup.png">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />

        <link rel="shortcut icon" type="image/x-icon" href="{$sitio.datos_sitio.images_domain}favicon.ico" />
        <link rel="canonical" href="{$sitio.datos_sitio.canonical}" />
        <link rel="image_src" href="{$sitio.datos_sitio.images_domain}ogimage.jpg" />
        {if $sitio.datos_facebook.is_facebook || $sistema.debug}
            <meta property="og:image" content="{$sitio.datos_sitio.images_domain}ogimage.jpg"/>
            <meta property="og:title" content="{$sitio.head.fixed.title}{$sitio.head.title}"/>
            <meta property="og:type" content="{$sitio.opengraph.type}"/>
            <meta property="og:url" content="{$sitio.datos_sitio.fullurl}"/>
            <meta property="og:site_name" content="{$sitio.datos_sitio.site_name}" />
            <meta property="og:description" content="{$sitio.head.description}" />
            {if !empty($sitio.datos_facebook.admins)}
                <meta property="fb:admins" content="{$sitio.datos_facebook.admins}" />
            {/if}
            {if !empty($sitio.datos_facebook.page_id)}
                <meta property="fb:page_id" content="{$sitio.datos_facebook.page_id}" />
            {/if}
            {if !empty($sitio.datos_facebook.app_id)}
                <meta property="fb:app_id" content="{$sitio.datos_facebook.app_id}" />
            {/if}
        {/if}

        <link href="/css/fixed/minified.css" rel="stylesheet" type="text/css"></link>
        <link href="/templates/{$pagina.template}/minified.css" rel="stylesheet" type="text/css"></link>

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <!--script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script-->
        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
        <script type="text/javascript" src="/js/fixed/minified.js"></script>
        <script type="text/javascript" src="/templates/{$pagina.template}/minified.js"></script>        

        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        {if $rss.enabled}
            <link rel="alternate" type="application/rss+xml" title="{$rss.main.title}" href="{$rss.main.url}" />
        {/if}

        <!--[if lt IE 9]>
            <link href="css/fixie.css" rel="stylesheet" type="text/css"></link>
        <![endif]-->

        <!-- TIPOGRAFIA -->
        <link href='http://fonts.googleapis.com/css?family=Lato:400,900,400italic,900italic' rel='stylesheet' type='text/css'>
        <!-- /TIPOGRAFIA -->

        <!-- PARA RESPONSIVE -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    </head>