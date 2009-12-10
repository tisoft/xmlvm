<?php
  function getUrl($url) {
    if (strpos($url, "@") == 0) {
      if ($url == "@jspektrum") {
        return "http://www.sigs-datacom.de/fachzeitschriften/javaspektrum/archiv/artikelansicht.html?tx_mwjournals_pi1[pointer]=0&tx_mwjournals_pi1[mode]=1&tx_mwjournals_pi1[showUid]=6495";
      } else if ($url == "@bluecarat") {
        return "http://www.bluecarat.eu";
      } else if ($url == "@ixokoban") {
        return "http://sourceforge.net/mailarchive/forum.php?thread_name=4B20C662.2070008%40puder.org&forum_name=xmlvm-users";
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