<!DOCTYPE html>
<html>
<head>
  <title>{{_('Webird Marionette Technology Demo')}}</title>
{{ partial('head_init') }}
  {{ stylesheet_link(['href': path~'css/style_bootstrap.css']) }}
</head>
<body>
  <div id="helloworld-content"></div>
  <div id="console-content"></div>
  {{ javascript_include(['src': path~'js/init_complex.js']) }}
  {{ javascript_include(['src': path~'js/marionette.js']) }}
</body>
