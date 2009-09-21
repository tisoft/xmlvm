<?php
include("../header.html");
?>
<?php
include("../nav.html");
?>	


<tr>
  <td id="main_content_td">
    <div id="main_content">
          
<h1>Overview: CLR to JVM</h1>
<p>
Both Microsoft's .NET Framework as well as Sun Microsystem's virtual
machine are stack-based. While both support similar features, they
also offer distinct capabilities. In particular .NET has features such
as value types and delegates that are not supported natively by Sun's
VM. The <a href="../frontend">front-end</a> generates two flavors of XMLVM
referred to XMLVM<sub>CLR</sub> and XMLVM<sub>JVM</sub> depending on whether the source
file stemmed from .NET or a Java class file. The main difference of
the two flavors are the byte code instructions supported by the
respective platform. XMLVM can cross-compile XMLVM<sub>CLR</sub> to XMLVM<sub>JVM</sub>.
This effectively enables the deployment of .NET executables on a JVM.
</p>
<p>
Consider for example numerical operations.
.NET's byte code instructions are untyped, i.e., there is only one
instruction for computing the remainder after division, while Sun's VM
offers several remainder instructions for integers, floats, and
doubles. When cross-compiling from the CLR to the JVM it becomes
necessary to determine the precise type on which the instruction
operates so it can be mapped correctly to a corresponding JVM
instruction. This can be accomplished through a data-flow analysis
(DFA). The DFA essentially annotates each instruction of a program
with a transition that this instruction causes on the type-stack.
</p>
<p>
XMLVM introduces new XML-markup to represent the result of the DFA.
<tt>&lt;stack-pre&gt;</tt> describes the type-stack before execution of an instruction
and <tt>&lt;stack-post&gt;</tt> describes the content of the type-stack after
execution of an instruction. Both tags are added as children to each
byte code instruction. The resulting XML-document is referred to
XMLVM<sub>DFA-CLR</sub> as can be seen in the following figure:
</p>
<p>
<div style="text-align:center">
<img src="clr-2-jvm.jpg" style="display:inline"/>
</div>
</p>
<p>
As can be seen, the <tt>&lt;clr:ldc&gt;</tt> (<em>load constant</em>) pushes one integer
onto the type stack, while the <tt>&lt;clr:rem&gt</tt> (<em>remainder after division</em>)
pops off two integers and pushes one back onto the type-stack. Each
element of the type stack is represented by the <tt>&lt;elem&gt;</tt> tag. Based on
the information computed by the DFA, it is possible to map CLR
instructions to the JVM. This can be accomplished by XSL stylesheets
with appropriate XPath expressions. The following XSL template maps the
<tt>&lt;clr:rem&gt;</tt> instruction to <tt>&lt;jvm:irem&gt;</tt> if the top of the type stack has
an integer:
</p>

<div class="code_block">
<p>
<?php
print_code("<xsl:template match=\"clr:rem[stack-post/elem[last()][@type = 'int']]\">\n" .
"  <jvm:irem/>\n" .
"</xsl:template>");
?>
</p>
</div>

<p>
To demonstrate this approach, we have written a C# version of the
calculator that was also used for the AJAX demo. The following links
show the various artifacts created during the cross-compilation
process:
</p>
<p>
  <ul>
    <li><a href="Calculator.cs" target="blank">Calculator.cs</a>: C# source code of this calculator using WinForms as the GUI library.</li>
    <li><a href="Calculator.xmlvm-clr" target="blank">Calculator.xmlvm-clr</a>: the XMLVM<sub>CLR</sub> version of <tt>Calculator.cs</tt></li>
    <li><a href="Calculator.xmlvm-clr-dfa" target="blank">Calculator.xmlvm-clr-dfa</a>: the XMLVM<sub>CLR-DFA</sub> version showing the result of the DFA.</li>
    <li><a href="Calculator.xmlvm-jvm" target="blank">Calculator.xmlvm-jvm</a>: the resulting XMLVM<sub>JVM</sub> version only featuring JVM byte code instructions.</li>
  </ul>
</p>
<p>
The following screenshots show the original <tt>Calculator.cs</tt> compiled
under Mono (left) and the cross-compiled Java version executed on a
standard Java VM (right). Java wrappers have been written for the
WinForms API using the Swing library.
</p>
<p>
<table style="width:100%">
  <tr>
    <td style="text-align:right"><img src="screenshot-jvm.png" style="display:inline" alt="Screenshot Calculator running on JVM"/></td>
    <td style="width:20px;"></td>
    <td style="text-align:left"><img src="screenshot-mono.png" style="display:inline" alt="Screenshot Calculator running on Mono"/></td>
  </tr>
</table>
</p>

<?php
  include("../footer.html");
?>