<?php
  function getUrl($url) {
    if (strpos($url, "@") == 0) {
      if ($url == "@jspektrum") {
        return "http://plum.sfsu.edu/xml11-external/korn_puder_JS_06_09.pdf";
      } else if ($url == "@bluecarat") {
        return "http://www.bluecarat.eu";
      }
    }
    return $url;
  }
?>

<html>
  <head>
    <meta http-equiv="refresh" content="2; URL=<?php print(getUrl($_REQUEST['url'])); ?>">
    <title>XMLVM redirector</title>
    <style>
      body {
        font-family:Arial,Verdana;
        text-align:center;
      }
    </style>
  </head>
  <body>
    <?php include('google-analytics.inc'); ?>
    You will be redirected to: <a href="<?php print(getUrl($_REQUEST['url'])); ?>"><?php print(getUrl($_REQUEST['url'])); ?></a>
  </body>
</html>