<?php
include("../header.html");
?>
<?php
include("../nav.html");
?>	

<tr>
  <td id="main_content_td">
    <div id="main_content">
          
<h1>Details: iPhone/Objective-C</h1>
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
runtime stack can contain elements or arbitrary types, the declaration
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
<style>
td.java, td.java-ln {vertical-align:top;}
tt.java, tt.java-ln, pre.java, pre.java-ln {line-height:1em; margin-bottom:0em;}
td.java-ln { text-align:right; }
tt.java-ln, pre.java-ln { color:#888888 }
/* Background       */ span.java0  { font-size: 10pt; color:#ffffff; }
/* Line numbers       */ span.java1  { font-size: 10pt; color:#808080; }
/* Multi-line comments       */ span.java2  { font-size: 10pt; color:#3f7f5f; }
/* Single-line comments       */ span.java3  { font-size: 10pt; color:#3f7f5f; }
/* Keywords       */ span.java4  { font-size: 10pt; color:#7f0055; font-weight:bold; }
/* Strings       */ span.java5  { font-size: 10pt; color:green; }
/* Character constants       */ span.java6  { font-size: 10pt; color:#990000; }
/* Numeric constants       */ span.java7  { font-size: 10pt; color:#990000; }
/* Parenthesis       */ span.java8  { font-size: 10pt; color:#000000; }
/* Primitive Types       */ span.java9  { font-size: 10pt; color:#7f0055; font-weight:bold; }
/* Others       */ span.java10  { font-size: 10pt; color:#000000; }
/* Javadoc keywords       */ span.java11  { font-size: 10pt; color:#7f9fbf; }
/* Javadoc HTML tags       */ span.java12  { font-size: 10pt; color:#7f7f9f; }
/* Javadoc links       */ span.java13  { font-size: 10pt; color:#3f3fbf; }
/* Javadoc others       */ span.java14  { font-size: 10pt; color:#3f5fbf; }
/* Undefined       */ span.java15  { font-size: 10pt; color:#ff6100; }
/* Annotation       */ span.java16  { font-size: 10pt; color:#646464; }
</style>

<tt class="java"><span class="java0"><br />
</span><span class="java4">public class </span><span class="java10">HelloWorld<br />
&#xA0;&#xA0;&#xA0; </span><span class="java4">extends </span><span class="java10">UIApplication<br />
</span><span class="java8">{<br />
&#xA0;&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">applicationDidFinishLaunching</span><span class="java8">(</span><span class="java10">NSNotification aNotification</span><span class="java8">)<br />
&#xA0;&#xA0;&#xA0; {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">CGRect rect = UIHardware.fullScreenApplicationContentRect</span><span class="java8">()</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; UIWindow window = </span><span class="java4">new </span><span class="java10">UIWindow</span><span class="java8">(</span><span class="java10">rect</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; window.orderFront</span><span class="java8">(</span><span class="java4">this</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; window.makeKey</span><span class="java8">(</span><span class="java4">this</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; window._setHidden</span><span class="java8">(</span><span class="java4">false</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; rect.origin.x = rect.origin.y = </span><span class="java7">0</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; UIView mainView = </span><span class="java4">new </span><span class="java10">UIView</span><span class="java8">(</span><span class="java10">rect</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; window.setContentView</span><span class="java8">(</span><span class="java10">mainView</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; UITextLabel _title = </span><span class="java4">new </span><span class="java10">UITextLabel</span><span class="java8">(</span><span class="java10">rect</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; _title.setText</span><span class="java8">(</span><span class="java5">&#34;Hello World!&#34;</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; _title.setCentersHorizontally</span><span class="java8">(</span><span class="java4">true</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; mainView.addSubview</span><span class="java8">(</span><span class="java10">_title</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">(</span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args</span><span class="java8">)<br />
&#xA0;&#xA0;&#xA0; {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">UIApplication.main</span><span class="java8">(</span><span class="java10">args, HelloWorld.</span><span class="java4">class</span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
}</span></tt>
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
	newwindow=window.open("demo",'XMLVM: iPhone Demo','height=840,width=600');
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
The slides also contain detailed instructions on how to compile and run the demo
on a jailbroken iPhone.
</p>

<?php
  include("../footer.html");
?>