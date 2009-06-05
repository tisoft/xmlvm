<style>
  pre {
    width:480px;
    font-family:courier new;
    font-size:8pt;
    display:inline;
  }
</style>
<?php
	include("../header.html");
?>
<?php
	include("../nav.html");
?>	

<tr>
  <td id="main_content_td">
    <div id="main_content">
	
<h1>Details: Android to iPhone</h1>

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
Java-based API for Cocoa Touch mentioned earlier. During the
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

<p>
XMLVM includes a demo that demonstrates the power of cross-compiling
Android applications to the iPhone. The demo is an Android version of
the classic Sokoban game called Xokoban. An <a href="demo/">online
version</a> of Xokoban can be played in XMLVM's own iPhone emulator.
</p>

<?php
  include("../footer.html");
?>