<?php
  $site_title = "iPhone/Objective-C";
?>
<?php
include("../header.html");
include("../nav.html");
?>	

<tr>
  <td id="main_content_td">
    <div id="main_content">
          
<h1>Overview: iPhone/Objective-C</h1>
<div style="display:inline; float:right; margin: 0px 0px 5px 10px;">
<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/s8nMpi5-P-I&hl=en&fs=1&rel=0&color1=0x5d1719&color2=0xcd311b"></param><param name="allowFullScreen" value="true"></param><embed src="http://www.youtube.com/v/s8nMpi5-P-I&hl=en&fs=1&rel=0&color1=0x5d1719&color2=0xcd311b" type="application/x-shockwave-flash" allowfullscreen="true" width="425" height="344"></embed></object>
</div>
<p>
Apple's iPhone has generated huge interest amongst users and developers
alike. Like MacOS X, the iPhone development environment is based on
Objective-C as the development language and Cocoa for the GUI
library. The iPhone SDK license agreement does not permit the
development of a virtual machine. Using XMLVM, we circumvent this
problem by cross-compiling Java to the iPhone. Just like a Java
application can be cross-compiled to <a href="../javascript">AJAX</a>, XMLVM can be
used to cross-compile a Java application to Objective-C. The
cross-compilation is also accomplished by mimicking a stack-based
machine in Objective-C. Consider the <tt>&lt;jvm:irem&gt;</tt> instruction (<em>integer
remainder</em>) that pops two integers off the stack and pushes their
remainder after division back onto the stack. Using the following XSL
template, the <tt>&lt;jvm:irem&gt;</tt> instruction can be mapped to Objective-C:
</p>
<div class="code_block">
<p>
<?php
print_code("<xsl:template match=\"jvm:irem\">\n".
"  <xsl:text>\n".
"    _op2.i = _stack[--_sp].i; // Pop operand 1\n".
"    _op1.i = _stack[--_sp].i; // Pop operand 2\n".
"    _stack[_sp++].i = _op1.i % _op2.i; // Push remainder\n".
"  </xsl:text>\n".
"</xsl:template>\n");
?>
</p>
</div>
<p>
Variable <tt>_stack</tt> represents the runtime stack, whereas <tt>_sp</tt>
is the stack pointer that refers to
the top of the stack. Pre-decrement and post-increment operations are
used for popping and pushing of arguments respectively. Since the
runtime stack can contain elements of arbitrary types, the declaration
of helper variables <tt>_op1</tt>, <tt>_op2</tt>, and <tt>_stack[]</tt> are based on a union:
</p>
<div class="code_block">
<p>
<b>typedef union</b> {<br/>
&nbsp;&nbsp;<b>id</b>     o;<br/>
&nbsp;&nbsp;<b>int</b>    i;<br/>
&nbsp;&nbsp;<b>float</b>  f;<br/>
&nbsp;&nbsp;<b>double</b> d;<br/>
} XMLVMElem;
</p>
</div>
<p>
The following Objective-C program is the cross-compiled version of
"Hello World" as explained in <a href="../frontend">XMLVM's frontend</a>:
</p>
<div class="code_block">
<p>
<?php
print_code("@interface org_xmlvm_test_HelloWorld : java_lang_Object\n".
"+ (void) main___java_lang_String_ARRAYTYPE :(NSMutableArray*)n1;\n".
"@end\n".
"\n".
"@implementation org_xmlvm_test_HelloWorld;\n".
"+ (void) main___java_lang_String_ARRAYTYPE :(NSMutableArray*)n1\n".
"{\n".
"    XMLVMElem _stack[2];\n".
"    XMLVMElem _locals[1];\n".
"    int _sp = 0;\n".
"    XMLVMElem _op1, _op2, _op3;\n".
"    int _i;\n".
"    for (_i = 0; _i <1; _i++) _locals[_i].o = nil;\n".
"    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];\n".
"    _locals[0].o = n1;\n".
"    _op1.o = [java_lang_System _GET_STATIC_java_lang_System_out];\n".
"    _stack[_sp++].o = _op1.o;\n".
"    _stack[_sp++].o = @\"Hello World\";\n".
"    _sp -= 2;\n".
"    [((java_io_PrintStream*) _stack[_sp].o) println___java_lang_String:_stack[_sp + 1].o];\n".
"    [_pool release];\n".
"    return;\n".
"}\n".
"@end\n");
?>
</p>
</div>
<p>
Since Objective-C does not support overloading of methods with
identical selectors, XMLVM uses name-mangling to differentiate between
different overloaded versions of a method. Apart of language-level
cross-compilation, iPhone applications depend on iPhone-specific
widgets. XMLVM features a prototype implementation of a Java version
of the Cocoa API. The following iPhone application demonstrates a GUI
version of "Hello World" in Java:
</p>
<div class="code_block">
<p>
<?php
print_code("public class HelloWorld extends UIApplication\n".
"{\n".
"  public void applicationDidFinishLaunching(NSNotification n)\n".
"  {\n".
"    UIScreen screen = UIScreen.mainScreen();\n".
"    CGRect rect = screen.applicationFrame();\n".
"    UIWindow window = new UIWindow(rect);\n".
"\n".
"    rect.origin.x = rect.origin.y = 0;\n".
"    UIView mainView = new UIView(rect);\n".
"    window.addSubview(mainView);\n".
"\n".
"    UILabel title = new UILabel(rect);\n".
"    title.setText(\"Hello World!\");\n".
"    title.setTextAlignment(UITextAlignment.UITextAlignmentCenter);\n".
"    mainView.addSubview(title);\n".
"\n".
"    window.makeKeyAndVisible();\n".
"  }\n".
"}\n");
?>
</p>
</div>

<p>
The Java application above can be cross-compiled to Objective-C and
executed on an iPhone. The Cocoa-specific Java classes such as
<tt>UIWindow</tt> and <tt>UIView</tt> are mapped to their Objective-C counter-parts.
XMLVM also features a Swing-based implementation of these Cocoa
classes that make it possible to run a Java-based iPhone application
on a desktop. The resulting iPhone simulator is shown below as a Java
applet. The accelerometer controls influence the orientation of the
fireworks. On a real iPhone the sparks will follow gravity:
</p>
<script>
function popupDemo() {
	var newwindow=window.open("demo", "_blank", "height=895,width=600");
	if (window.focus) {newwindow.focus()}
	return false;
}
</script>
<p>
<a href="#" onclick="popupDemo();">Click here for a demo (requires Java)</a>
</p>

<p>
Further details on the Java for the iPhone project can be found at a
<a href="http://www.youtube.com/watch?v=s8nMpi5-P-I">Google Tech Talk</a>
(<a href="http://plum.sfsu.edu/xml11-external/java4iphone-google.pdf">Slides</a>).
Note that in the presentation it is mentioned that you need a jailbroken device
to run the demo. With the official release of the iPhone SDK by Apple this is
no longer necessary. Consult the XMLVM manual for instructions on how to
run a Java-based iPhone application on an actual device.
</p>

<?php
  include("../footer.html");
?>