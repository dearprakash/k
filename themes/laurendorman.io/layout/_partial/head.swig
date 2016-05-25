<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
  <meta name='viewport' content='width=device-width,initial-scale=1'>
  <title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  {{ open_graph({
    fb_admins: config.fb_admins,
    twitter_site: config.twitter
  }) }}
  <meta name="twitter:image" content="https://laurendorman.io/twitter_summary_card@2x.png" />
  <link rel="shortcut icon" href="{{ theme.favicon }}" type="image/x-icon">
  <link rel="icon" href="/favicon.ico" type="image/x-icon">
  <link rel="apple-touch-icon-precomposed" sizes="57x57" href="/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/apple-touch-icon-114x144.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/apple-touch-icon-144x144.png">
  <meta name="apple-mobile-web-app-title" content="Lauren Dorman">
  <meta name="application-name" content="Lauren Dorman">
  <meta name="msapplication-TileColor" content="#5b3c70">
  <meta name="msapplication-TileImage" content="/mstile-144x144.png">
  <meta name="theme-color" content="#ffffff">
  {{ css('css/styles') }}
</head>