<?php
  if ($_GET["mode"] != "print") { 
    include("../header.html");
    include("../content_top.html");
  } else {
?>
<style>
    body, td {
      font-family:arial,tahoma;
      font-size:13px;
    }
    body h4 {
      font-size:16px;
    }
    body h3 {
      font-size:18px;
    }
    body h2 {
      font-size:20px;
    }
	pre {
	  font-size:9pt;
	  color:#070;
	  font-family:monospace, courier;
	  display:inline;
	}
	
	pre.code {
		background-color:#EEE;
		border:1px solid #BBB;
		font-size:9pt;
		line-height:125%;
		margin:1em 0;
		overflow:auto;
		padding:1em;
		display:block;
	}
	
	.table_of_contents {
	  float:right;
	  margin-left:20px;
	  padding-right:20px;
	  border:1px solid #AAA;
	  background:#EEE;
	}
	
	.table1 {
	  background:#EEE;
	  border-spacing:0;
	}
	
	.table1 b {
	  font-size:110%;
	}
	
	.table1 td {
	  border:1px solid #AAA;
	  padding:3px;
	}
</style>
<?php  	
  }
?>
    <style>
      code {
        font-weight: bold;
        font-family: Courier New, Monospace
      }
    </style>

<?php
  if ($_GET["mode"] != "print") { 
?>
      <div style="font-size:11px; font-weight:bold; float: right;">
        <a href="?mode=print">
          <img style="width: 24px; height: 24px;" src="/manual/printer24.png" alt="Print manual" title="Print manual"/>
          Print
        </a>
      </div>
<?php
  }
?>
	  <h1>XMLVM User Manual</h1>
	  
	  <div class="table_of_contents">
	    <ol>
        <li><a href="#introduction">Introduction</a>
          <ul>
            <li><a href="#overview">Overview</a></li>
            <li><a href="#getting_xmlvm">Getting XMLVM</a></li>
            <li><a href="#compiling_xmlvm">Compiling XMLVM</a></li>
            <li><a href="#invoking_xmlvm">Invoking XMLVM</a>
              <ul>
                <li><a href="#command_line_options">Command Line Options</a></li>
                <li><a href="#command_line_option_examples">Examples</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <br/>
        <li><a href="#iphone_android_backend">iPhone/Android Backend</a>
          <ul>
            <li><a href="#iphone">Java-based iPhone Applications</a></li>
            <li><a href="#running_iphone">Running an iPhone Application</a>
              <ul>
                <li><a href="#java_based_emulator">Java-based iPhone Emulator</a></li>
                <li><a href="#apples_iphone_emulator">Apple's iPhone Emulator</a></li>
                <li><a href="#using_xcode">Using Apple's Xcode IDE</a></li>
              </ul>
            </li>
            <li><a href="#android4iphone">Android Compatibility Library</a></li>
            <li><a href="#iphone_sample_apps">Sample Applications</a></li>
          </ul>
        </li>
	    </ol>
	  </div>
	
	  <h2><a name="introduction">Introduction</a></h2>
	  <p>
			XMLVM is a flexible cross-compilation framework. Instead of
			cross-compiling source code of high-level programming languages, XMLVM
			translates byte code instructions. Byte code instructions are
			represented by XML-tags and the cross-compilation is done via XSL
			stylesheets. This chapter gives an introduction to XMLVM. Section
			<a href="#overview">Overview</a> provides a brief overview of the XMLVM toolchain.
			Section <a href="#getting_xmlvm">Getting XMLVM</a> describes how to obtain the source
			code of XMLVM and Section <a href="#compiling_xmlvm">Compiling XMLVM</a> how to build XMLVM
			from source. The various command line options supported by XMLVM are
			described in Section <a href="#invoking_xmlvm">Invoking XMLVM</a>.
    </p>
    <h3><a name="overview">Overview</a></h3>
    <p>
			XMLVM supports byte code instructions from two popular virtual
			machines: the Java Virtual Machine (JVM) and the Common Language
			Runtime (CLR) that is part of the .NET framework. The name XMLVM is
			inspired by the fact that byte code instructions are represented via
			XML. Each byte code instruction is mapped to a corresponding XML-tag.
			Transformations of XMLVM programs are done via XSL stylesheets. The
			following Figure shows all possible paths through the XMLVM
			toolchain:
		</p>
		<p style="text-align:center;">
			<img style="display:inline" src="xmlvm_toolchain.png" alt="XMLVM Toolchain" title="XMLVM Toolchain"/>
		</p>
		<p>	
			The first step in using XMLVM is to compile a Java or .NET source code
			program to byte code. This is done with a native compiler such as Sun
			Microsystem's <code>javac</code> or Microsoft's Visual Studio. The resulting
			byte code program (either a Java <code>.class</code> file or a .NET
			<code>.exe</code> file) is fed into the XMLVM toolchain where it is first
			converted to XML. XMLVM<sub>JVM</sub> denotes an XMLVM program that contains
			JVM byte code instructions, whereas a XMLVM<sub>CLR</sub> program contains
			CLR byte code instructions. It is possible to cross-compile
			XMLVM<sub>CLR</sub> to XMLVM<sub>JVM</sub>with the help of a data flow analysis
			(denoted as XMLVM<sub>DFA</sub> in the previous Figure).
		</p>
		<p>
			XMLVM<sub>JVM</sub> serves as the canonical representation within the XMLVM
			toolchain in the sense that it separates the frontend from the
			backend. That is to say, all code generating backends use
			XMLVM<sub>JVM</sub> as their input. As can be seen in the previous Figure,
			various paths through the XMLVM toolchain
			are possible. For example, .NET programs can be cross-compiled to Java
			class files and Java class files can be cross-compiled to JavaScript
			amongst others.
     	</p>
     	<p>
	        <table class="table1">
	            <tr>
	              <td rowspan=2><b>To:</b></td>
	              <td colspan=2><b>From:</b></td>
	            </tr>
	            <tr>
	              <td><b>JVM</b></td>
	              <td><b>CLR</b></td>
	            </tr>
		        <tr>
		          <td>C++</td>
		          <td>Language crosscompilation only. No library support.</td>
		          <td>Language crosscompilation only. No library support.</td>
		        </tr>
		        <tr>
		          <td>JavaScript</td>
		          <td>Compatibility library for a subset of AWT.</td>
		          <td>Compatibility library for a subset of WinForms.</td>
		        </tr>
		        <tr>
		          <td>Python</td>
		          <td>Language crosscompilation only. No library support.</td>
		          <td>Language crosscompilation only. No library support.</td>
		        </tr>
		        <tr>
		          <td>.NET</td>
		          <td>Language crosscompilation only for a subset of JVM instructions.</td>
		          <td>N/A</td>
		        </tr>
		        <tr>
		          <td>Java</td>
		          <td>N/A</td>
		          <td>Support for most .NET instructions. No support for generics.
		              Compatibility library for a subset of Win-Forms.</td>
		        </tr>
		        <tr>
		          <td>Objective-C</td>
		          <td>Most of language crosscompilation. Compatibility libraries for a subset of Cocoa.</td>
		          <td>Language crosscompilation only. No library support.</td>
		        </tr>
	        </table>
        </p>
		<p>
			The byte code level cross-compilation is only one aspect of XMLVM. The
			XMLVM distribution also contains compatibility libraries for the
			various targets. For example, When cross-compiling from C\# to
			Java class files, XMLVM contains a compatibility library for WinForms (the
			Microsoft GUI library) written in Java. This allows C\# desktop
			applications to be cross-compiled to Java desktop applications. Similarly,
			when cross-compiling from Java to JavaScript, XMLVM features a
			compatibility library for AWT/Swing written in JavaScript that
			effectively allows to cross-compile Java desktop applications to AJAX
			applications.
		</p>
		<p>	
			It should be noted that XMLVM is a research project and as such lacks
			the completeness of a commercial product. Each individual backend
			requires a significant effort to support different APIs. WinForms,
			AWT/Swing, and Cocoa are all complex libraries and at this point XMLVM
			only supports a subset of each. The various paths through the XMLVM
			toolchain have different levels of maturity that should be taken
			into consideration when using XMLVM. The previous Table
			gives an overview of the completeness of
			the various backends.
		</p>
		
		<h3><a name="getting_xmlvm">Getting XMLVM</a></h3>
		<p>
		  XMLVM is released under the GPL v2 license and is hosted at
			<a href="http://www.sourceforge.net/project/xmlvm">SourceForge</a>.
			We currently do not offer pre-compiled binary packages.
			The only way to obtain XMLVM is to checkout the latest version from
			the Subversion repository. You will need a Subversion client to do
			this. If you are using a command line version of Subversion, you can
			checkout the trunk of the XMLVM repository via the following command:
		</p>
			<code>svn co https://xmlvm.svn.sourceforge.net/svnroot/xmlvm/trunk/xmlvm</code><br/><br/>
		<p>	
			Note that this will give you a read-only version of the repository.
			You will be able to update (which you should do frequently) but not
			commit changes to the repository. If you find a bug, please send a
			mail to the XMLVM mailing list \cite{sf-xmlvm-list}.
		</p>
		<p>	
			XMLVM is developed using the Eclipse IDE. You can also checkout the
			sources of XMLVM via Eclipse (using an appropriate Subversion plugin
			such as Subclipse \cite{subclipse} or
			Subversive \cite{subversive}). The XMLVM sources contain
			<code>.project</code> and <code>.classpath</code> files so that Eclipse will
			recognize XMLVM as an Eclipse project. The benefit of using Eclipse is
			that it makes it easy to navigate the source code if you intend to
			study the internals of XMLVM. There are also numerous Eclipse launch
			configurations (in the <code>etc/</code> directory) that allow the
			invocation of various demos.
		</p>
		
		<h3><a name="compiling_xmlvm">Compiling XMLVM</a></h3>
    <p>
      XMLVM depends on numerous third-party libraries such as BCEL, JDOM, and
			Saxon. All these libraries are also released under an Open Source
			library. To facilitate the compilation process, XMLVM contains binary
			versions (i.e., jars) of all required libraries. All third-party
			libraries are contained in the <code>lib</code> directory. Building XMLVM
			from sources requires Java 1.6 as well as ant. In order to compile
			XMLVM from command line, simply run ant in the XMLVM root directory:
		</p>
			<code>
			    cd xmlvm<br/>
			    ant
			</code><br/><br/>
		<p>	
			After a successful run of ant, there should be a <code>dist/</code>
			directory. The ant script packages all dependent libraries and XMLVM's
			own class files into one jar file. The only file needed to run XMLVM
			is the jar file <code>dist/xmlvm.jar</code>. This jar file can be copied
			to a convenient location. The following section explains how to run
			XMLVM. The directory <code>dist/demo/</code> contains several demos to
			highlight the various aspects of XMLVM.
		</p>
			
		<h3><a name="invoking_xmlvm">Invoking XMLVM</a></h3>
		<p>	
			As mentioned in the previous section, the ant script will package the
			binaries of XMLVM into one jar file. By default, this jar file is
			located in <code>dist/xmlvm.jar</code> after a successful compilation of
			XMLVM. Java 1.6 is needed to run XMLVM. Invoking XMLVM can be done in
			the following way:
		</p>
		<code>
			    java -jar dist/xmlvm.jar
		</code><br/><br/>
		<p>
			Command line options can be appended at the end of the command line
			such as:
		</p>
		<code>
			    java -jar dist/xmlvm.jar --version
		</code><br/><br/>
		<p>
			The various byte code transformations and code generators can be
			invoked via appropriate command line options. Section
			<a href="#command_line_options">Command Line Options</a> explains all available command line
			options and Section <a href="#command_line_option_examples">Command Line Option Examples</a> gives some
			examples. Note that at this point we only give an overview of the
			command line options. Refer to subsequent chapters for more detailed
			information on the various backends.
    </p>
    
    <h4><a name="command_line_options">Command Line Options</a></h4>
    <p>
      XMLVM can be invoked by running the executable jar file called
			<code>xmlvm.jar</code>. In the following we assume that an alias called
			\xmlvm is defined to invoke XMLVM. Under Unix, this can be
			accomplished via the following command:
		</p>
			<code>
			    alias xmlvm="java -jar $(pwd)/dist/xmlvm.jar"
			</code><br/><br/>
	  <p>
			The behavior of XMLVM is controlled by numerous command line
			arguments. <code>xmlvm</code> reads in one or more source files, processes them
			according to the command line options, and then writes out one or more
			destination files.
    </p>
    <ul>
      <li><code>--in=&lt;path&gt;</code>
        <p>
				  The source files are specified via one or more <code>--in</code>
				  options. If the argument passed to <code>--in</code> is a directory,
				  then this directory is traversed recursively and all files with the
				  suffix <code>.class</code>, <code>.exe</code>, or <code>.xmlvm</code> are
				  processed. Files with other suffixes are ignored. It is possible to
				  use wildcards to filter out certain files. It is possible to specify
				  multiple <code>--in</code> parameters. At least one <code>--in</code>
				  parameter is required.
			  </p>
			</li>
			<li><code>--out=&lt;path&gt;</code>
			  <p>
				  The output generated by <code>xmlvm</code> is written to a directory specified
				  by the <code>--out</code> parameter.  The argument <code>&lt;path&gt;</code>
				  has to denote a directory name. If the directory does not exist,
				  <code>xmlvm</code> will create it. All files generated by <code>xmlvm</code> will be written
				  to this directory. The only exception is when using
				  <code>--target=class</code>.  In this case the resulting Java class
				  files (ending in suffix <code>.class</code>) are written to appropriate
				  sub-directories matching their package names. Already existing files
				  with the same name will be overwritten. If the <code>--out</code>
				  parameter is omitted, the current directory is the default.
				</p>
			</li>
			<li><code>--target=[xmlvm|jvm|clr|dfa|class|exe|js|cpp|python|objc|qooxdoo|iphone|android-on-iphone]</code>
        <p>
				  This option defines the output format of the target. These
				  correspond with the various backends for code generation supported
				  by XMLVM. The different targets are explained in the following:
				</p>
				<ul>
				  <li><code>xmlvm</code>: The input files are cross-compiled to XMLVM.
					  <code>*.class</code> files will be cross-compiled to XMLVM<sub>JVM</sub>.
					  <code>*.exe</code> files will be cross-compiled to XMLVM<sub>CLR</sub>.
					  <code>*.xmlvm</code> files will be copied unchanged. This option is the
					  default for <code>--target</code>.
					</li>
				  <li><code>jvm</code>: The input files are cross-compiled to
  				  XMLVM<sub>JVM</sub>.
  				</li>
				
					<li><code>clr</code>: The input files are cross-compiled to
					  XMLVM<sub>CLR</sub>
					</li>
					
					<li><code>dfa</code>: A DFA (Data Flow Analysis) is performed on the
					  input files. Currently the DFA will only be performed for
					  XMLVM<sub>CLR</sub> programs. This option cannot be used in conjunction
					  with any other code generating option.
					</li>
					
					<li><code>class</code>: The input files are cross-compiled to Java
					  class files.
					</li>
					
					<li><code>exe</code>: The input files are cross-compiled to a .NET
					  executable.
					</li>
					
					<li><code>js</code>: The input files are cross-compiled to JavaScript.</li>
					
					<li><code>cpp</code>: The input files are cross-compiled to C++.</li>
					
					<li><code>python</code>: The input files are cross-compiled to Python.</li>
					
					<li><code>objc</code>: The input files are cross-compiled to
					  Objective-C.
					</li>
					
					<li><code>qooxdoo</code>: Cross-compiles an application as a web
					  application. The business logic is cross-compiled to JavaScript
					  and a Java or .NET compatibility library is copied alongside.
					  The output directory specified by <code>--out</code> will contain a
					  ready to deploy web application.
					  The environment variable <code>QOOXDOO_HOME</code> needs to point to the
					  base directory of the Qooxdoo <code>qooxdoo</code> installation.
					  This option implies <code>--target=js</code> and requires options
					  <code>--qx-main</code> as well as <code>--qx-app</code>.
					</li>
					<li><code>iphone</code>: Cross-compiles an application to the iPhone.
					  The output directory specified by <code>--out</code> will contain a
					  ready to compile iPhone application.  The resulting iPhone
					  application can be compiled via <code>make</code> using Apple's SDK for the
					  iPhone. This option requires the option <code>--iphone-app</code>.
					</li>
					<li><code>android-on-iphone</code>: Cross-compiles an Android
					  application to the iPhone.  This option is mostly identical in
					  behavior as target <code>iphone</code>, except that target
					  <code>android-on-iphone</code> will also copy an Android compatibility
					  library to the output directory specified by <code>--out</code>. This
					  option also requires the option <code>--iphone-app</code>.
					</li>
			  </ul><br/>
			</li>
			<li><code>--iphone-app=&lt;app_name&gt;</code>
        <p>
				  This option can only be used in conjunction with targets
				  <code>iphone</code> or <code>android-on-iphone</code>. It specifies the name
				  of the iPhone application whose name will be
				  <code>&lt;app_name&gt;</code>.
				</p>
			</li>

			<li><code>--qx-app=&lt;app_name&gt;</code>
			  <p>
			    This option lets you specify the name of the generated Qooxdoo
			    application.
			  </p>
      </li>
      
      <li><code>--qx-main=&lt;main-class&gt;</code>
        <p>
          This option denotes the entry point of the generated Qooxdoo
          application. It requires a full qualified name as a parameter. This
          option can only be used in conjunction with option
          <code>--qx-app</code>.
        </p>
      </li>
      <li><code>--qx-debug</code>
        <p>
          Creates a debug version of the Qooxdoo application.  If not
          specified, a ready-to-deploy version will be generated.  Requires
          option <code>--qx-app</code>.
        </p>
      </li>
      
      <li><code>--version</code>
        <p>
          Prints the version of XMLVM.
        </p>
      </li>
      <li><code>--quiet</code>
        <p>
          No diagnostic messages are printed.
        </p>
      </li>
    </ul>
    
    <h4><a name="command_line_option_examples">Examples</a></h4>
    <ul>
      <li><code>xmlvm --in=/foo/bar</code>
			  <p>
				  The directory <code>/foo/bar</code> is searched recursively for
				  <code>*.class</code>, <code>*.exe</code>, and <code>*.xmlvm</code> files. The
				  default target is <code>xmlvm</code>. For <code>*.class</code> files,
				  XMLVM<sub>JVM</sub> is generated. For <code>*.exe</code> files, XMLVM<sub>CLR</sub>
				  is generated. Files with suffix <code>*.xmlvm</code> are copied to the
				  output directory. Other files with different suffices are ignored.
				  Since no <code>--out</code> parameter was given, the default output
				  directory is "." (the current directory).
			  </p>
			</li>
			<li><code>xmlvm --in=/foo/*.class --in=/bar/*.exe --out=/bin</code>
        <p>			
				  The directory <code>/foo</code> is searched recursively for
				  <code>*.class</code> and the directory <code>/bar</code> is searched
				  recursively for <code>*.exe</code> files. The default target is
				  <code>xmlvm</code>. Files with other suffices are ignored. For
				  <code>*.class</code> files, XMLVM<sub>JVM</sub> is generated. For
				  <code>*.exe</code> files, XMLVM<sub>CLR</sub> is generated. The resulting
				  <code>*.xmlvm</code> files are placed in directory <code>/bin</code>.
        </p>
      </li>
			<li><code>xmlvm --in=/foo --target=jvm</code>
        <p>			
				  The directory <code>/foo</code> is searched recursively for
				  <code>*.class</code>, <code>*.exe</code>, and <code>*.xmlvm</code> files. In all
				  cases, the generated output will always be XMLVM<sub>JVM</sub>. For
				  <code>*.exe</code> files as well as <code>*.xmlvm</code> files containing
				  something other than XMLVM<sub>JVM</sub> will be cross-compiled
				  XMLVM<sub>JVM</sub>.
        </p>
      </li>
			<li><code>xmlvm --in=/foo --target=class</code>
        <p>
				  Same as the previous example, however instead of generating
				  XMLVM<sub>JVM</sub> files, Java <code>*.class</code> files that can be
				  executed by a Java virtual machine will be generated. The class
				  files will be placed in appropriate sub-directories matching their
				  package names.
        </p>
      </li>
			<li><code>xmlvm --in=/foo --target=iphone --iphone-app=TheApplication</code>
        <p>
				  Same as the previous example, however instead of creating Java
				  <code>*.class</code> files, an iPhone application will be generated.
				  The output directory will contain the ready to compile Objective-C
				  source code including all necessary auxiliary files such as
				  <code>Info.plist</code> and a <code>Makefile</code>. The iPhone application
				  will be called <code>TheApplication</code> using a default icon.
        </p>
      </li>
			<li><code>xmlvm --in=/foo --target=android-on-iphone --iphone-app=TheApplication</code>
        <p>
				  Same as the previous example, but will also copy the Android
				  compatibility library to the output directory. This effectively
				  allows Java-based Android applications to be cross-compiled to the
				  iPhone.
        </p>
      </li>
			<li><code>xmlvm --in=/foo --qx-app=TheApplication
			    --qx-main=com.acme.Main</code>
        <p>
				  The directory <code>/foo</code> is searched recursively for
				  <code>*.class</code>, <code>*.exe</code>, and <code>*.xmlvm</code> files. This
				  option implies <code>--target=js</code>. All files will be
				  cross-compiled to JavaScript. With the help of the Qooxdoo build
				  scripts, the output directory will contain a ready to be deployed
				  AJAX application. The main entry point of the application is
				  <code>com.acme.Main</code>.
        </p>
      </li>
    </ul>
    
        <h2><a name="iphone_android_backend">iPhone/Android Backend</a></h2>
        <p>
			With the help of XMLVM it is possible to cross-compile Java
			applications to native iPhone applications. The Apple license
			agreement does not permit the installation of a virtual machine on the
			iPhone. By cross-compiling a Java application to a native iPhone
			application, this restriction of the license agreement is therefore
			not violated. XMLVM can legally generate native iPhone application and
			it is not necessary to jailbreak a device in order to run an
			application cross-compiled by XMLVM. Section <a href="#iphone">Java-based iPhone Applications</a> gives an
			overview of Java-based iPhone applications including the obligatory
			``Hello World'' program. Section <a href="#running_iphone">Running an iPhone Application</a> explains
			various ways how a Java-based iPhone application can be
			executed. Section <a href="#android4iphone">Android Compatibility Library</a> demonstrates how
			Android applications can be cross-compiled to native iPhone
			applications. Section <a href="#iphone_sample_apps">Sample Applications</a> gives an overview
			of various sample applications that show the capabilities of the
			Java-for-iPhone and Android-to-iPhone portions of XMLVM.
		</p>
		
		<h3><a name="iphone">Java-based iPhone Applications</a></h3>
		  <p>
				Apple only supports Objective-C as the development language for the
				iPhone. The GUI of iPhone applications is based on Cocoa Touch. If
				Java is to be used as a development language for iPhone applications,
				two aspects need to be addressed: the cross-compilation of Java to
				Objective-C and a Java API for Cocoa Touch. The following application
				shows the ``Hello World'' application for the iPhone written in Java:
			</p>
			
			<code>
				import org.xmlvm.iphone.*;<br/>
				<br/>
				public class HelloWorld extends UIApplication {<br/>
				<br/>
				&nbsp;&nbsp;public void applicationDidFinishLaunching(UIApplication app) {<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;UIScreen screen = UIScreen.mainScreen();<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;CGRect rect = screen.applicationFrame();<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;UIWindow window = new UIWindow(rect);<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;rect.origin.x = rect.origin.y = 0;<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;UIView mainView = new UIView(rect);<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;window.addSubview(mainView);<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;UILabel title = new UILabel(rect);<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;title.setText("Hello World!");<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;title.setTextAlignment(UITextAlignment.UITextAlignmentCenter);<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;mainView.addSubview(title);<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;window.makeKeyAndVisible();<br/>
				&nbsp;&nbsp;}<br/>
				<br/>
				&nbsp;&nbsp;public static void main(String[] args) {<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;UIApplication.main(args, HelloWorld.class);<br/>
				&nbsp;&nbsp;}<br/>
				}<br/>
			</code>
			
			<p>
				The Java API for Cocoa Touch is loosely based on the Objective-C
				counterpart. While XMLVM makes better use of overloading and interface
				definitions for delegates to create a strongly-typed API, the
				description of the various classes and methods can be taken from
				Apple's official documentation. Choosing the target <code>iphone</code>
				(see Section \ref{SEC_COMMAND_LINE_OPTIONS}) will cross-compile this
				application to Objective-C, include all required compatibility
				libraries for Cocoa Touch, as well as generate a Makefile that
				facilitates the compilation of the native version of the application.
			</p>
				
			
			<h3><a name="running_iphone">Running an iPhone Application</a></h3>
			<p>
		    A Java-based iPhone application can by executed in several ways, each
			  of which will be explained in the following.
			</p>
			
			<h4><a name="java_based_emulator">Java-based iPhone Emulator</a></h4>
		    <p>
				XMLVM includes Java implementations of the Cocoa Touch API. Classes
				such as <code>UIWindow</code> and <code>UILabel</code> have been implemented
				making use of Java2D. The implication is that a Java-based iPhone
				application can be run as a pure 100% Java application on a standard
				Java virtual machine without the need of Apple's SDK or an actual
				device. Note that re-implementing Cocoa Touch in Java is a major
				undertaking in itself and XMLVM only support a certain subset of the
				API. While this approach works well for the demos shipped with XMLVM
				(an online applet version of the demos can be viewed at
				<a href="http://xmlvm.org">xmlvm.org</a>) there are currently no plans to make
				further enhancements of the Java-based iPhone emulator.
			</p>
			
			<h4><a name="apples_iphone_emulator">Apple's iPhone Emulator</a></h4>
            <p>
				Apple's SDK for the iPhone includes an iPhone emulator. When
				cross-compiling a Java application using the the <code>iphone</code>
				target, the resulting <code>Makefile</code> compiles and deploys the
				native application on Apple's emulator. The <code>Makefile</code> will
				only work on a Mac OS platform with a default installation of the
				Xcode toolchain. After cross-compiling an application using XMLVM,
				simply change to the directory where the code was generated and type
				<code>make</code>. This will compile and run the application in Apple's
				emulator.
			</p>
			
			<h4><a name="using_xcode">Using Apple's Xcode IDE</a></h4>
            <p>
				The <code>Makefile</code> generated by XMLVM can only compile and deploy
				the application on Apple's emulator. Given the complexity of code
				signing that Apple requires for all native iPhone applications, you
				will need to use Xcode if a cross-compiled Java application is to be
				deployed on a device. The following steps explain the process of
				compiling an XMLVM-generated application using Xcode:
            </p>
				
			<ol>
				<li> First cross-compile the Java-based iPhone application using
				  XMLVM by using target <code>iphone</code>.</li>
				<li> Launch Xcode and create a new Cocoa application by selecting
				  File &gt; New Project... &gt; Window Based Application.</li>
				<li> Choose a name for the new project and a location where it will
				  be stored. This location should not be the directory where XMLVM
				  cross-compiled the application.</li>
				<li> Xcode will automatically generate some skeleton files that need
				  to be deleted. Delete <code>main.m</code>, <code>MainWindow.xib</code>, as
				  well as the application delegate header and implementation file.</li>
				<li> In <code>Info.plist</code>, delete the property "Main nib file base
				  name."</li>
				<li> Add all source files generated by XMLVM to the project by
				  selecting Project &gt; Add to Project... Do not add the
				  <code>Info.plist</code>, <code>Makefile</code>, and <code>MakeVars</code> files
				  that were generated by XMLVM.</li>
				<li> Clicking on "Build and Go" should compile and launch the
				  application in Apple's emulator.</li>
				<li> With the proper certificates and entitlements installed, you can
				  change the target to a provisioned device and clicking on "Build
				  and Go" now should compile and deploy the application on the
				  device.</li>
			</ol>
			
			<h3><a name="android4iphone">Android Compatibility Library</a></h3>
            <p>				
				Android is an Open Source platform for mobile devices. Initiated by
				Google, Android has received much attention. Android applications are
				developed using Java, although a special compiler converts class files
				to a proprietary, register-based virtual machine that is used on
				Android devices to execute applications. Android defines its own API
				for writing mobile applications. With the help of XMLVM it is possible
				to cross-compile Java-based Android applications to native iPhone
				applications. The following Figure depicts this process:
			</p>
			<p style="text-align:center">
			  <img style="display:inline" src="android2iphone.png" alt="Android to iPhone" title="Android to iPhone" />
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
				As can be seen, compared to the Java-for-the-iPhone portion of XMLVM,
				the only additional feature added to support Android applications is
				the Android compatibility library. When selecting target
				<code>android-on-iphone</code> (see <a href="#command_line_options">
				Command Line Options</a>), additional to cross-compiling the
				application to Objective-C, this option also includes the Android
				compatibility library to the generated project.  The Android-based
				iPhone application can be run in both the XMLVM-specific iPhone
				emulator as well as Apple's emulator as explained in the previous
				section.
			</p>
					
			<h3><a name="iphone_sample_apps">Sample Applications</a></h3>
            <p>						
				XMLVM includes several sample applications that demonstrate the
				Java-for-the-iPhone and Android-to-iPhone portions of XMLVM. The
				source code of the Java-for-the-iPhone demos is located in directory
				<code>demo/iphone/</code>, whereas the source code of the
				Android-to-iPhone demos are located in directory
				<code>demo/android/</code>. All samples can be executed in one of the ways
				explained in <a href="#running_iphone">Running an iPhone Application</a>: in XMLVM's own
				Java-based iPhone emulator, by running the <code>Makefile</code>, or by
				using the Xcode IDE. Additionally, the sample programs can also be run
				via Eclipse-specific launch configurations stored in the <code>etc/</code>
				directory. Those launch configurations will run the Java-based iPhone
				emulator that was described in <a href="#java_based_emulator">
				Java-based iPhone Emulator</a> from within Eclipse.
			</p>
			<p>	
				All sample programs will get automatically compiled when running
				<code>ant</code> as explained in <a href="#compiling_xmlvm">Compiling XMLVM</a>. After
				<code>ant</code> successfully completes, there will be a directory
				<code>dist/demo/</code>.  For each demo, there are two sub-directories
				each containing the same demo in two different versions: the
				<code>java/</code> directory will contain the Java-version that can be
				executed as a pure Java application using XMLVM's iPhone emulator,
				whereas the <code>iphone/</code> directory will contain the
				ready-to-compile Objective-C source of the same application. The Java
				version can be executed via the <code>java -jar</code> command. The
				following sample applications are available:
			</p>
				
			<ul>
				<li><b>iHelloWorld (Portrait)</b>: "Hello World" in portrait mode.</li>
				<li><b>iHelloWorld (PortraitUpsideDown)</b>: "Hello World" in upside
				  down portrait mode.</li>
				<li><b>iHelloWorld (Landscape)</b>: "Hello World" in landscape mode.</li>
				<li><b>iHelloWorld (Fullscreen)</b>: "Hello World" in fullscreen
				  landscape mode.</li>
				<li><b>iFireworks</b>: iPhone version of the fireworks application.</li>
				<li><b>aFireworks</b>: Android version of the fireworks application. It is
				  possible to import directory <code>demo/android/afireworks/</code> as an
				  Android project under Eclipse (requires the Android SDK). In this
				  case aFireworks can be run inside the Android emulator.</li>
				<li><b>Xokoban</b>: Android version of the Xokoban application. It is
				  possible to import directory <code>demo/android/xokoban/</code> as an
				  Android project under Eclipse (requires the Android SDK). In this
				  case Xokoban can be run inside the Android emulator.</li>
			</ul>
<?php
  if ($_GET["mode"] != "print") { 
    include("../footer.html");
  } else {
?>
  	<script>window.print();</script>
<?php
  }
?>