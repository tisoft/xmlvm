<?php
$host  = $_SERVER['HTTP_HOST'];
$uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
$extra = 'documentation';
header("Location: http://$host/$extra");
exit;
?>
