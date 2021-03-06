{**
 * templates/article/header.tpl
 *
 * Copyright (c) 2013-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 * Verify by afifsh
 * Article View -- Header component.
 *}
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml" lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
<head>
	<title>{$article->getLocalizedTitle()|strip_tags|escape} | {$article->getFirstAuthor(true)|strip_tags|escape} | {$currentJournal->getLocalizedTitle()|strip_tags|escape}</title>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}" />
	<meta name="description" content="{$article->getLocalizedTitle()|strip_tags|escape}" />
	{if $article->getLocalizedSubject()}
		<meta name="keywords" content="{$article->getLocalizedSubject()|escape}" />
	{/if}

	{if $displayFavicon}<link rel="icon" href="{$faviconDir}/{$displayFavicon.uploadName|escape:"url"}" type="{$displayFavicon.mimeType|escape}" />{/if}

	{include file="article/dublincore.tpl"}
	{include file="article/googlescholar.tpl"}
	{call_hook name="Templates::Article::Header::Metadata"}

	<link rel="stylesheet" href="{$baseUrl}/lib/pkp/styles/pkp.css" type="text/css" />
<!--<link rel="stylesheet" href="{$baseUrl}/lib/pkp/styles/common.css" type="text/css" />
	<link rel="stylesheet" href="{$baseUrl}/styles/common.css" type="text/css" /> -->
	<link rel="stylesheet" href="{$baseUrl}/styles/compiled.css" type="text/css" />
<!--<link rel="stylesheet" href="{$baseUrl}/styles/articleView.css" type="text/css" /> -->
	{if $journalRt && $journalRt->getEnabled()}
		<link rel="stylesheet" href="{$baseUrl}/lib/pkp/styles/rtEmbedded.css" type="text/css" />
	{/if}

	{call_hook|assign:"leftSidebarCode" name="Templates::Common::LeftSidebar"}
	{call_hook|assign:"rightSidebarCode" name="Templates::Common::RightSidebar"}
	{if $leftSidebarCode || $rightSidebarCode}<link rel="stylesheet" href="{$baseUrl}/plugins/themes/agriprima/css/screen.css" type="text/css" />{/if}
	{if $leftSidebarCode}<link rel="stylesheet" href="{$baseUrl}/plugins/themes/agriprima/css/leftSidebar.css" type="text/css" />{/if}
	{if $rightSidebarCode}<link rel="stylesheet" href="{$baseUrl}/plugins/themes/agriprima/css/rightSidebar.css" type="text/css" />{/if}
	{if $leftSidebarCode && $rightSidebarCode}<link rel="stylesheet" href="{$baseUrl}/plugins/themes/agriprima/css/bothSidebars.css" type="text/css" />{/if}

	{foreach from=$stylesheets item=cssUrl}
		<link rel="stylesheet" href="{$cssUrl}" type="text/css" />
	{/foreach}

	<!-- Base Jquery -->
	{if $allowCDN}<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript">{literal}
		// Provide a local fallback if the CDN cannot be reached
		if (typeof google == 'undefined') {
			document.write(unescape("%3Cscript src='{/literal}{$baseUrl}{literal}/lib/pkp/js/lib/jquery/jquery.min.js' type='text/javascript'%3E%3C/script%3E"));
			document.write(unescape("%3Cscript src='{/literal}{$baseUrl}{literal}/lib/pkp/js/lib/jquery/plugins/jqueryUi.min.js' type='text/javascript'%3E%3C/script%3E"));
		} else {
			google.load("jquery", "{/literal}{$smarty.const.CDN_JQUERY_VERSION}{literal}");
			google.load("jqueryui", "{/literal}{$smarty.const.CDN_JQUERY_UI_VERSION}{literal}");
		}
	{/literal}</script>
	{else}
	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/lib/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/lib/jquery/plugins/jqueryUi.min.js"></script>
	{/if}

	<!-- Compiled scripts -->
	{if $useMinifiedJavaScript}
		<script type="text/javascript" src="{$baseUrl}/js/pkp.min.js"></script>
	{else}
		{include file="common/minifiedScripts.tpl"}
	{/if}

	{foreach from=$stylesheets name="testUrl" item=cssUrl}
		{if $cssUrl == "$baseUrl/styles/ojs.css"}
			<link rel="stylesheet" href="{$cssUrl}" type="text/css" />
		{/if}
	{/foreach}

	{include file="common/head.tpl"}

	{foreach from=$stylesheets name="testUrl" item=cssUrl}
		{if $cssUrl != "$baseUrl/styles/ojs.css"}
			<link rel="stylesheet" href="{$cssUrl}" type="text/css" />
		{/if}
	{/foreach}

	{$additionalHeadData}
</head>
<body id="pkp-{$pageTitle|replace:'.':'-'}" class="article">

<div id="container">
<div id="header" role="banner">
<div id="headerTitle">

{if $displayPageHeaderLogo && is_array($displayPageHeaderLogo)}
<figure>
	<img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}" width="{$displayPageHeaderLogo.width|escape}" height="{$displayPageHeaderLogo.height|escape}" {if $displayPageHeaderLogoAltText != ''}alt="{$displayPageHeaderLogoAltText|escape}"{else}alt="{translate key="common.pageHeaderLogo.altText"}"{/if} />
</figure>
{/if}
<h1>
	
{if $displayPageHeaderTitle && is_array($displayPageHeaderTitle)}
	<figure>
	<img src="{$publicFilesDir}/{$displayPageHeaderTitle.uploadName|escape:"url"}" {if $displayPageHeaderTitleAltText != ''}alt="{$displayPageHeaderTitleAltText|escape}"{else}alt="{translate key="common.pageHeader.altText"}"{/if} />
	</figure>
{elseif $displayPageHeaderTitle}
	{$displayPageHeaderTitle}
{elseif $alternatePageHeader}
	{$alternatePageHeader}
{elseif $siteTitle}
	{$siteTitle}
{else}
	{$applicationName}
{/if}
	
</h1>
<link href='https://fonts.google.com rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="{$baseUrl}/plugins/themes/agriprima/css/slider.css" type="text/css" />
<script src="{$baseUrl}/plugins/themes/agriprima/js/slider.js" type="text/javascript"></script>
<div id="sliderFrame">
<div id="ashslider">
<a href="#"><img src="{$baseUrl}/plugins/themes/agriprima/img/slider/1.png" alt="{translate key="plugins.theme.agriprima.caption1"}" /></a>
<a href="#"><img src="{$baseUrl}/plugins/themes/agriprima/img/slider/2.png" alt="{translate key="plugins.theme.agriprima.caption2"}" /></a>
<a href="#"><img src="{$baseUrl}/plugins/themes/agriprima/img/slider/3.png" alt="{translate key="plugins.theme.agriprima.caption3"}" /></a>
<a href="#"><img src="{$baseUrl}/plugins/themes/agriprima/img/slider/4.png" alt="{translate key="plugins.theme.agriprima.caption4"}" /></a>
<a href="#"><img src="{$baseUrl}/plugins/themes/agriprima/img/slider/5.png" alt="{translate key="plugins.theme.agriprima.caption5"}"/></a>
</div>
</div>
</div>
</div>
{include file="common/navbar.tpl"}

<div id="body">

{if $leftSidebarCode || $rightSidebarCode}
	<div id="sidebar">
		{if $leftSidebarCode}
			<div id="leftSidebar">
				{$leftSidebarCode}
			</div>
		{/if}
		{if $rightSidebarCode}
			<div id="rightSidebar">
				{$rightSidebarCode}
			</div>
		{/if}
	</div>
{/if}

<div id="main">

<div id="breadcrumb">
	<a href="{url page="index"}" target="_parent">{translate key="navigation.home"}</a> &gt;
	{if $issue}<a href="{url page="issue" op="view" path=$issue->getBestIssueId($currentJournal)}" target="_parent">{$issue->getIssueIdentification(false,true)|escape}</a> &gt;{/if}
	<a href="{url page="article" op="view" path=$articleId|to_array:$galleyId}" class="current" target="_parent">{$article->getFirstAuthor(true)|escape}</a>
</div>

<div id="content">