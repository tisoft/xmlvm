<?php
  $site_title = "Frontend";
?>
<?php
include("../header.html");
include("../nav.html");
?>	


<tr>
  <td id="main_content_td">
    <div id="main_content">
          
<h1>Overview: Frontend</h1>

<p>At the core of XMLVM is an XML-representation of byte code programs.
Such programs are typically executed by a virtual machine. Two
prominent virtual machines are Sun Microsystem's Java Virtual Machine (JVM)
and Microsoft's Common Language Runtime (CLR) that is part of the .NET
framework. Both these virtual machines implement stack-based
operations; i.e., byte code instructions retrieve and store their
arguments via a stack.
</p>
<p>
The front-end of the XMLVM toolchain translates byte code programs to
XML. Currently XMLVM supports Java VM and CLR instructions. A Java or
a .NET program are first compiled by a native compiler. The result is
a Java class file or a .NET executable respectively. The XMLVM
front-end takes these binary files as input and generates an XML
document. We make use of XML-namespaces to represent byte code
instructions from different virtual machines.
</p>
<div style="text-align:center">
  <img src="frontend.jpg" alt="XMLVM Frontend" style="display:inline"/>
</div>
<p>
In the following we demonstrate this translation process for the Java
and C# version of the familiar "Hello World" program. Consider the
"Hello World" program in Java:
</p>

<div class="code_block">
<p>
<span style="color:#7F0055;font-weight:bold;">public class</span> HelloWorld<br/>
{<br/>
&nbsp;&nbsp;<span style="color:#7F0055;font-weight:bold;">static public void</span> main(String[] args)<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;System.<i>out</i>.println(<span style="color:green">"Hello World"</span>);<br/>
&nbsp;&nbsp;}<br/>
}
</p>
</div>

<p>
This Java program is first compiled to a Java class file and then
translated by XMLVM to the following XML-document:
</p>

<div class="code_block">
<p>
<?php
print_code("<vm:xmlvm xmlns:vm=\"http://xmlvm.org\" xmlns:jvm=\"http://xmlvm.org/jvm\">\n".
"  <vm:class name=\"HelloWorld\" extends=\"java.lang.Object\">\n".
"    <vm:method name=\"main\" isPublic=\"true\" isStatic=\"true\" stack=\"2\" locals=\"1\">\n".
"      <vm:signature>\n".
"        <vm:return type=\"void\" />\n".
"        <vm:parameter type=\"java.lang.String[]\" />\n".
"      </vm:signature>\n".
"      <vm:code>\n".
"        <jvm:var name=\"args\" id=\"0\" type=\"java.lang.String[]\" />\n".
"        <jvm:getstatic class-type=\"java.lang.System\" type=\"java.io.PrintStream\" field=\"out\" />\n".
"        <jvm:ldc type=\"java.lang.String\" value=\"Hello World\" />\n".
"        <jvm:invokevirtual class-type=\"java.io.PrintStream\" method=\"println\">\n".
"          <vm:signature>\n".
"            <vm:return type=\"void\" />\n".
"            <vm:parameter type=\"java.lang.String\" />\n".
"          </vm:signature>\n".
"        </jvm:invokevirtual>\n".
"        <jvm:return />\n".
"      </vm:code>\n".
"    </vm:method>\n".
"  </vm:class>\n".
"</vm:xmlvm>");
?>
</p>
</div>

<p>
We refer to this document XMLVM<sub>JVM</sub> since it features byte code
instructions from the Java virtual machine. It contains the same
information that is present in <tt>HelloWorld.class</tt>. The <tt>&lt;vm:class&gt;</tt> tag
describes the details of the Java class <tt>HelloWorld</tt> and the <tt>&lt;vm:method&gt;</tt>
tag the details of the method <tt>main</tt>. The attributes <tt>locals</tt> and <tt>stack</tt>
denote the number of local variables and number of stack elements
respectively needed for this method. The <tt>&lt;vm:code&gt;</tt> tag finally
contains the the byte code instructions that reflect the
implementation of the main-method. The <tt>&lt;jvm:getstatic&gt;</tt> tag pushes the
object reference stored in the static member <tt>System.out</tt> onto the
stack. <tt>&lt;jvm:ldc&gt;</tt> (<em>load constant</em>) pushes the string "Hello World" onto
the string. The <tt>&lt;jvm:invokevirtual&gt;</tt> instruction finally calls method
<tt>println</tt> of the object pointed to by the previously pushed reference
with "Hello World" as the actual parameter. <tt>&lt;jvm:return&gt;</tt> finally
leaves the scope of the main-method.
</p>
<p>
A .NET program can be translated to XMLVM<sub>CLR</sub> analogously. The
following is the C# version of "Hello World":
</p>

<div class="code_block">
<p>
<b>using</b> System;<br/>
<b>class</b> HelloWorld {<br/>
&nbsp;&nbsp;<b>public static void</b> Main()<br/>
&nbsp;&nbsp;{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;Console.WriteLine(<span style="color:green">"Hello World"</span>);<br/>
&nbsp;&nbsp;}<br/>
}<br/>
</p>
</div>

<p>
This C# program is first compiled to a .NET executable and then fed
into our toolchain to yield the following XMLVM<sub>CLR</sub>:
</p>

<div class="code_block">
<p>
<?php
print_code("<vm:xmlvm xmlns:vm=\"http://xmlvm.org\" xmlns:clr=\"http://xmlvm.org/clr\">\n".
"  <vm:class name=\"HelloWorld\" extends=\"System.Object\">\n".
"    <vm:method name=\"Main\" isStatic=\"true\" isPublic=\"true\" stack=\"8\" locals=\"0\">\n".
"      <vm:signature>\n".
"        <vm:return type=\"void\" />\n".
"      </vm:signature>\n".
"      <vm:code>\n".
"        <clr:ldc type=\"System.String\" value=\"Hello World\" />\n".
"        <clr:call has-this=\"false\" class-type=\"System.Console\" method=\"WriteLine\">\n".
"          <vm:signature>\n".
"            <vm:return type=\"void\" />\n".
"            <vm:parameter type=\"System.String\" />\n".
"          </vm:signature>\n".
"        </clr:call>\n".
"        <clr:return />\n".
"      </vm:code>\n".
"    </vm:method>\n".
"  </vm:class>\n".
"</vm:xmlvm>");
?>
</p>
</div>


<p>
The general structure of XMLVM<sub>CLR</sub> is identical to XMLVM<sub>JVM</sub>. The main
difference is that XMLVM<sub>CLR</sub> features byte code instructions supported
by the .NET virtual machine. The <tt>&lt;clr:ldc&gt;</tt> instruction pushes the
string "Hello World" onto the stack. The <tt>&lt;clr:call&gt;</tt> instruction calls
the static method <tt>System.Console.WriteLine</tt> with the string "Hello
World" as the actual parameter.
</p>

<?php
  include("../footer.html");
?>