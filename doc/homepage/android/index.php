<?php
  $site_title = "Android to iPhone";
?>
<?php
	include("../header.html");
?>
<style>
  pre {
    width:480px;
    font-family:courier new;
    font-size:8pt;
    display:inline;
  }
</style>
<?php
	include("../nav.html");
?>	
<tr>
  <td id="main_content_td">
    <div id="main_content">
	
<h1>Overview: Android to iPhone</h1>

<img src="android2iphone.png" style="float:right;width:440px; margin:0px 30px 10px 30px;" alt="Android2iPhoneDiagram">

<p>
Android is an Open Source platform for mobile devices. Initiated by
Google, Android has received much attention. Android applications are
developed using Java, although a special compiler converts class files
to a proprietary, register-based virtual machine that is used on
Android devices to execute applications. Android defines its own API
for writing mobile applications. With the help of XMLVM it is possible
to cross-compile Java-based Android applications to native iPhone
applications. The diagram depicts the relationship between the
Android and iPhone version of the application.
</p>

<p>
The Android application is written in Java and makes use of an Android
specific API. XMLVM offers a compatibility library, written in Java,
that offers the same API as Android, but only makes use of the
<a href="../iphone/">Java-based API for Cocoa Touch</a>. During the
cross-compilation process, both the application and the Android
compatibility library are cross-compiled from Java to Objective-C and
linked with the Cocoa Touch compatibility library to yield a native
iPhone application.
</p>

<p>
The code below shows an excerpt from the Android Compatibility Library.
The Android class <tt>android.widget.Button</tt> is a wrapper for
the Cocoa class <tt>UIButton</tt>. When a click handler is added to
an <tt>android.widget.Button</tt> instance, method
<tt>setOnClickListener()</tt> adds an instance of the Cocoa class
<tt>UIControlDelegate</tt> to the <tt>UIButton</tt> via the corresponding
method <tt>addTarget()</tt>. The code below will be cross-compiled to
Objective-C:
</p>

<div style="float:right"><object width="320" height="265"><param name="movie" value="http://www.youtube.com/v/TG-NIt2O5J8&hl=en_US&fs=1&color1=0x5d1719&color2=0xcd311b"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/TG-NIt2O5J8&hl=en_US&fs=1&color1=0x5d1719&color2=0xcd311b" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="320" height="265"></embed></object>
<a href="http://xmlvm.org/slides/android2iphone-google-mtv.pdf" style="margin-top:4px;" target="_blank"><br/>Download the slides as PDF</a>
</div>

<div class="code_block">
<p>
<?php
print_code("package android.widget;\n".
"\n".
"public class Button extends View {\n".
"   protected UIButton button;\n".
"\n".
"   // ...\n".
"\n".
"   public void setOnClickListener(OnClickListener listener) {\n".
"        final OnClickListener theListener = listener;\n".
"        button.addTarget(new UIControlDelegate() {\n".
"\n".
"            @Override\n".
"            public void raiseEvent() {\n".
"                theListener.onClick(Button.this);\n".
"            }\n".
"\n".
"        }, UIControl.UIControlEventTouchUpInside);\n".
"   }\n".
"}\n");
?>
</p>
</div>

<script>
function popupDemo() {
	var newwindow=window.open("demo", "_blank", "height=600,width=910");
	if (window.focus) {newwindow.focus()}
	return false;
}
</script>

XMLVM includes a demo that demonstrates the power of cross-compiling
Android applications to the iPhone. The demo is an Android version of
the classic Sokoban game called Xokoban. An <a href="#" onclick="popupDemo();">
online version (requires Java)</a> of Xokoban can be played in XMLVM's own iPhone 
emulator.
</p>

<?php
  include("../footer.html");
?>