<?php
  $site_title = "Android to HTML5 Web Demo";
?>
<?php
  include("../header.html");
  include("../content_top.html") ;
?>
<h1>Android to HTML5 - Xokoban Web Demo</h1>
<p>
<div id="status" style="text-align: center;">Downloading...</div>
<div style="text-align: center;">
  <progress value="0" max="100" id="progress" hidden=1/>
</div>
<canvas id="canvas" oncontextmenu="event.preventDefault()" style="padding-right: 0; margin-left: auto; margin-right: auto; display: block; border: 1px black solid;"></canvas>
</p>
<p>This page features an Android application that was cross-compiled to
HTML5 using XMLVM and <a href = "https://github.com/kripken/emscripten">emscripten</a>. XMLVM was used to cross-compile the
Android app to C code using Posix/SDL API and emscripten generated the HTML5.</p>

<p>Android app:
<a href = "https://play.google.com/store/apps/details?id=org.xmlvm.demo.xokoban">
https://play.google.com/store/apps/details?id=org.xmlvm.demo.xokoban</a></p>

<p>Statistics of the cross-compiled version:</p>
<ul>
<li>Size: 3.5 MB HTML/JS + 1.5 MB graphic assets</li>
<li>Number of JRE classes: 244</li>
<li>Number of Android classes: 100</li>
<li>Number of XMLVM classes: 61</li>
<li>Number of application classes: 33</li>
<li>Total classes: 438</li>
</ul>
<p>This work was funded by a grant from the Mozilla Foundation.</p>
<script type="text/javascript" src="xokoG2.js"/></script>
<?php
  include("../footer.html");
?>
