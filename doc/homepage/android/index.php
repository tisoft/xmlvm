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


<p>How do you run an Android application on the iPhone? The following steps show what we have done.</p>
<h2>Step 1: Built the Android application</h2>
	<table>
	<tr>
	  <td><b>Running in Android emulator</b></td>
	  <td><b>Java source for Android</b></td>
	</tr>
	<tr>
	  <td  valign=top >
	    <img width=300 src="androidEmulator.jpg" />
	  </td>
	  <td>
	  <pre>
public class AndroidFireworks extends Activity {
	/** Called when the activity is first created. */
	public static final int UPDATE = 1337;

	Handler updater = new Handler();

	public AbsoluteLayout layout;
	public Fireworks f;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		layout = new AbsoluteLayout(this);
		setContentView(layout);
		f = new Fireworks(this);
		updater.postDelayed(updateFw, 100);
	}

	private Runnable updateFw = new Runnable() {
		public void run() {
			f.doUpdate();
			updater.postDelayed(updateFw, 50);
			layout.invalidate();

		}
	};
}
</pre>
	</td>
	</tr>
	</table>
	<h2>Step 2:	Compatibility library</h2>
	<p>Next we implemented the Android API in terms of the Java API for iPhone</p>
	<table>
	<tr>
	  <td><b>Running in the XMLVM iPhone emulator</b></td>
	  <td><b>Example of Android compatibility library</b></td>
	</tr>
	<tr>
	<td valign=top >
	<img width=300 src="iphoneJavaEmulator.jpg" /></td>
	<td>
	<pre>
package android.app;

public class Activity extends ContextThemeWrapper {
	public UIWindow window;
	public CGRect rect;
	public ActivityImpl myIphoneWrapper;

	protected void onCreate(Bundle savedInstanceState) {
		rect = UIScreen.fullScreenApplicationContentRect();

		/* Initialize the main window */
		window = new UIWindow(rect);
		window.orderFront(this.myIphoneWrapper);
		window.makeKey(this.myIphoneWrapper);
		window._setHidden(false);
	}

	public View mainView;

	public void setContentView(View view) {
		mainView = view;
		window.setContentView(view.mainView);
	}
}
  </pre>
	</td>
	</tr>
	</table>
	
	<h2>Step3: Cross-compilation</h2>
	<p>We then cross compiled the application to Objective-C and compiled it with Xcode and the Apple iPhone SDK</p>
	<table>
	<tr>
	  <td><b>Running in the iPhone simulator</b></td>
	  <td><b>Example of cross compiled run method in Objective-C</b></td>
	</tr>
	<tr>
	<td valign=top >
	<img width=250 src="iphoneEmulator.jpg" /></td>
	<td>
	<pre>
- (void) run
{
    XMLVMElem _stack[4];
    XMLVMElem _locals[1];
    int _sp = 0;
    XMLVMElem _op1, _op2, _op3;
    int _i;
    for (_i = 0; _i &lt;1; _i++) _locals[_i].o = nil;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _locals[0].o = self;
    label0:;
    _stack[_sp++].o = _locals[0].o;
    _op1.o = _stack[--_sp].o;
    _op2.o = ((edu_sfsu_AndroidFireworks_AndroidFireworks*) _op1.o)->f;
    _stack[_sp++].o = _op2.o;
    _sp -= 1;
    [((edu_sfsu_AndroidFireworks_Fireworks*) _stack[_sp].o) doUpdate];
    _stack[_sp++].o = _locals[0].o;
    _op1.o = _stack[--_sp].o;
    _op2.o = ((edu_sfsu_AndroidFireworks_AndroidFireworks*) _op1.o)->layout;
    _stack[_sp++].o = _op2.o;
    _sp -= 1;
    [((android_widget_AbsoluteLayout*) _stack[_sp].o) invalidate];
    _stack[_sp++].o = _locals[0].o;
    _op1.o = _stack[--_sp].o;
    _op2.o = ((edu_sfsu_AndroidFireworks_AndroidFireworks*) _op1.o)->updater;
    _stack[_sp++].o = _op2.o;
    _stack[_sp++].o = _locals[0].o;
    _stack[_sp++].l = 50;
    _sp -= 3;
    _op1.i = [((android_os_Handler*) _stack[_sp].o)</pre><img src="wrap.gif" style="display:inline"/><br/>
    <pre>
        postDelayed___java_lang_Runnable_long:_stack[_sp + 1].o:_stack[_sp + 2].l];
    _stack[_sp++].i = _op1.i;
    _sp--;
    label1:;
    [_pool release];
    return;
}
    </pre>
	</td>
	</tr>
	</table>
	
	<h2>How to try it</h2>
    The demo application highlighted on this page is called iFireworks.  In order to 
    try it out yourself:
    <ul>
    <li> Use Subversion to do a get on 
    <a href="http://xmlvm.svn.sourceforge.net/viewvc/xmlvm/changes/joshm/android/">
    this branch</a> </li>
    
    <li>Ensure you have <a href="http://ant.apache.org/">Ant</a> installed</li>
    <li>Ensure you have a recent <a href="http://java.sun.com/javase/downloads/index.jsp">JDK</a> installed</li>
    <li>Then navigate into XMLVM source tree you downloaded earlier and go to the <b>xmlvm</b> 
    folder. (the one that contains <b>build.xml</b></li>
    <li>execute Ant by entering the <b>ant</b> -- the project will build</li>
    <li>A directory called dist will be created, containing the following sub-directories:</li>
        <ul>
        <li>android-compat: Objective-C android compatibility library </li>
        <li>androidfireworks: </li>
            <ul>
            <li> androidfireworks.jar:  Android application running in the XMLVM iPhone simulator</li>
            <li> objc: Adding everything in this directory to an Xcode iPhone project will let you compile the Android fireworks project for the iPhone or iPhone simulator in Xcode</li>
            </ul>
        </ul>
    </ul>
	
<?php
  include("../footer.html");
?>