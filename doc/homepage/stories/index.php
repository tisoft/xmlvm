<?php
  include("../header.html");
  include("../content_top.html") ;
?>
<h1>Stories</h1>

<script>
function popupIPhoneDemo() {
	var newwindow=window.open("../iphone/demo", "_blank", "height=895,width=600");
	if (window.focus) {newwindow.focus()}
	return false;
}

function popupAndroidDemo() {
	var newwindow=window.open("../android/demo", "_blank", "height=600,width=910");
	if (window.focus) {newwindow.focus()}
	return false;
}
</script>

<ul>

<li> <a href="http://www.xml11.org">XML11</a>: XMLVM is used as part of the
     XML11 project where Java applications are cross-compiled to AJAX applications.

<li> <a href="http://www.sf-movies.org">SF-Movies</a>: Movies made in San Francisco.
     This application was developed as a desktop application using Java and
     cross-compiled using XMLVM to an AJAX application.
     
<li> <a href="#" onclick="popupIPhoneDemo();">iPhone Simulator</a>: a Java-only version of the
     Cocoa library can be run as a Java applet.
	
<li> <a href="#" onclick="popupAndroidDemo();">Xokoban</a>: an Android application running
     under the Java iPhone Simulator.

<li> <a href="http://www.cokeandcode.com/resumepage">Kevin Glass</a> has used XMLVM to create
     a <a href="http://www.cokeandcode.com/aboidblog">cross-platform game</a> for Android and
     the iPhone.

</ul>


<?php
  include("../footer.html");
?>