<!DOCTYPE html>
<html class="full" lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>JBake</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="generator" content="JBake">

    <!-- Le styles -->
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/bootstrap.min.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/asciidoctor.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/base.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/prettify.css" rel="stylesheet">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/full.css" rel="stylesheet">
    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
  </head>
  <body onload="prettyPrint()">
  <div class="header">
      <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">
          <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>images/marylogo.png"
      </a>
      <div id="content">
          <a href="https://github.com/marytts/marytts">
              <img src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" class="ribbon"/>
          </a>
      </div>
  </div>



   