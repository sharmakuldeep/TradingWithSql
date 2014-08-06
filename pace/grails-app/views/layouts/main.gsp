<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		%{--<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">--}%
		%{--<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">--}%
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'header.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <link rel='stylesheet' href="${resource(dir: 'css', file: 'gu_stylesheet.css')}" type='text/css'>
        <link rel='stylesheet' href="${resource(dir: 'css', file: 'pace.css')}" type='text/css'>
    <link rel='stylesheet' href="${resource(dir: 'css', file: 'newjquery-ui.css')}" type='text/css'>

    %{--<g:javascript library='jquery'/>--}%
        <g:javascript library="application"/>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js/jquery', file: 'newjquery-1.9.1.js')}'></script>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js/jquery', file: 'newjquery-ui.js')}'></script>

    <script type="text/javascript" src="${resource(dir: 'js/jquery', file: 'validate.js')}"></script>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js', file: 'base.js')}'></script>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js/jquery', file: 'jquery.blockUI.js')}'></script>
    <g:javascript src="select2.js"/>
    <g:javascript src="common.js"/>
    <g:javascript src="butterfly.js"/>
    <g:javascript src="synthetic.js"/>
    <g:javascript src="calenderSpread.js"/>



    <g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>

        <div >
            <g:render template="/layouts/header"/>
        </div id="main">
        %{--TODO HEADER DONE--}%

        <div style="width: 100%; margin:  0 0">
            <g:layoutBody/>
        </div>

        %{--TODO: INTEGRATING FOOTER--}%
        <div >
            <g:render template="/layouts/footer"/>
        </div>
		<r:layoutResources />

	</body>
</html>
