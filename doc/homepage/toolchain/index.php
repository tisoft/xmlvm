<?php
include("../header.html");
?>
<?php
include("../nav.html");
?>	

<tr>
  <td id="main_content_td">
    <div id="main_content">
          
<h1>Details: Toolchain Overview</h1>

The figure below depicts the complete XMLVM toolchain. Each of the
boxes represent an artifact while the arrows denote the various
transformations between those artifacts. The input to the XMLVM
toolchain is either a Java class file or a .NET executable. A Java
class file is translated to XMLVM<sub>JVM</sub> which is an XML-document
describing the contents of that class file. Likewise XMLVM<sub>CLR</sub> is an
XML-document describing the contents of a .NET executable. XMLVM<sub>CLR</sub>
can be cross-compiled to XMLVM<sub>JVM</sub> with the help of a data flow
analysis (DFA) which is shown as XMLVM<sub>CLR-DFA</sub> in the figure below.

XMLVM<sub>JVM</sub> serves as a canonical representation as it acts as a
boundary between the front- and back-end of the cross-compiler. Once
XMLVM<sub>JVM</sub> has been generated, it can be mapped to various high-level
programming languages. It is also possible to map XMLVM<sub>JVM</sub> to a
Java class file again. This allows various permutations of the XMLVM
toolchain. Each of those different arrangements of the XMLVM toolchain
is described in more detail on a separate page. First, we describe how
a <a href="../clr2jvm">.NET application can be translated to XMLVM<sub>JVM</sub></a>. Next, we
discuss how <a href="../javascript">XMLVM<sub>JVM</sub> can be cross-compiled
to JavaScript</a> to generate
AJAX applications. Note that with the front-end it is possible
to generate AJAX applications from Java or any of the .NET
applications. The final use case we present here is a backend for
Objective-C which effectively allows <a href="../iphone">Java applications to be
cross-compiled to native iPhone applications</a>.
<div style="text-align:center">
  <img src="toolchain_summary.jpg" style="display:inline" alt="XMLVM Toolchain Summary"/>
</div>

<?php
  include("../footer.html");
?>