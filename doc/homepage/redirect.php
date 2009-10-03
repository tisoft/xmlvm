<html>
  <head>
    <meta http-equiv="refresh" content="2; URL=<?php print($_REQUEST['url']); ?>">
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
    You will be redirected to: <a href="<?php print($_REQUEST['url']); ?>"><?php print($_REQUEST['url']); ?></a>
  </body>
</html>