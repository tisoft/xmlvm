<?xml version="1.0"?>

<!--
 *
 *  XMLVM - An XML-based Programming Language
 *  Copyright (c) 2004-2005 by Arno Puder
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 *  For more information, visit the XMLVM Home Page at
 *  http://www.xml11.org/xmlvm/
 *
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:vm="http://xmlvm.org"
                xmlns:jvm="http://xmlvm.org/jvm"
                version="2.0">

<xsl:output method="text" indent="no"/>


<xsl:template match="vm:xmlvm">
<!--  Compatibility library initialized -->
import pygtk
pygtk.require("2.0")
import gtk


# Wrapper for realizing something like static methods
class java_awt_Font:
  def _init_java_awt_Font___java_lang_String_int_int(self, str, a, b):
    font = str.value

class Callable:
    def __init__(self, anycallable):
        self.__call__ = anycallable

class java_lang_Object:
  value=""
  def _init_java_lang_Object(self):
    self.value = ""

class java_lang_String:
  value = ""
  def __init__(self, newValue):
    self.value = str(newValue)
    print "String initialized with: " + str(newValue)
  def _equals___java_lang_Object(self, obj):
    print "String[" + self.value  + "].equals(" + obj.value + ")"
    #return self.value == obj.value
    return False
  def _charAt___int(self, pos):
    return ord(self.value[pos])
  def _length(self):
    return len(self.value)
  def _valueOf___int(i):
    return java_lang_String(i)
  _valueOf___int = Callable(_valueOf___int)

class java_lang_StringBuilder:
  strValue = ""
  def __init__(self):
    print "StringBuilder initialized"
  def _init_java_lang_StringBuilder___java_lang_String(self, str):
    self.strValue = str.value
  def _append___java_lang_String(self, str):
    self.strValue += str.value
    return self
  def _toString(self):
    return java_lang_String(self.strValue)

class java_lang_Double:
  def _parseDouble___java_lang_String(toParse):
    return float(toParse.value)
  _parseDouble___java_lang_String = Callable(_parseDouble___java_lang_String)
    
class java_lang_Thread:
  def __init__(self):
    print "Thread initialized"
  def _init_java_lang_Thread(self):
    print "Thread init"
  def _start(self):
    print "Thread start"
  def _sleep___long(millis):
    print "sleeping"

class java_awt_TextField:
  text = ""
  textField = None
  def __init__(self):
    print "TextField initialized"
  def _init_java_awt_TextField___int(self, newText):
    self.textField = gtk.Entry(0)
    self.textField.set_text(str(newText))
    self.text = newText
    print "Textfield set to: " + str(self.text)
  def _getGtkComponent(self):
    return self.textField
  def _getText(self):
    return java_lang_String(self.textField.get_text())
    
class java_awt_Label:
  text = ""
  alignment = 0
  label = None
  def __init__(self):
    print "Label initialized"
  def _init_java_awt_Label___java_lang_String_int(self, newText, newAlignment):
    self.label = gtk.Label(newText.value)
    self.text = newText
    self.alignment = newAlignment
  def _getGtkComponent(self):
    return self.label
  def _setText___java_lang_String(self, newText):
    self.text = newText.value
    self.label.set_text(newText.value)
  
    
class java_awt_Button:
  label = ""
  registeredActionListeners = []
  button = None
  def __init__(self):
    print "Button initialized"
  def _init_java_awt_Button___java_lang_String(self, newLabel):
    self.button = gtk.Button(newLabel.value)
    self.button.connect("clicked", self.gtkClicked)
    self.label = newLabel
    print "Button text set to " + self.label.value
  def _addActionListener___java_awt_event_ActionListener(self, newListener):
    self.registeredActionListeners.append(newListener)
  def _getGtkComponent(self):
    return self.button
  def gtkClicked (self, widget):
    for listener in self.registeredActionListeners:
      listener._actionPerformed___java_awt_event_ActionEvent(None)

class java_awt_Frame:
  title = ""
  window = None
  def __init__(self):
    print "Frame initialized"
  def _init_java_awt_Frame(self):
    self.title = "";
    self.window =  gtk.Window(gtk.WINDOW_TOPLEVEL)
    self.window.set_title("")
  def _init_java_awt_Frame___java_lang_String(self, newTitle):
    self.title = newTitle
    self.window =  gtk.Window(gtk.WINDOW_TOPLEVEL)
    self.window.set_title(newTitle.value)
  def _add___java_awt_Component_java_lang_Object(self, component, newConstraints):
    print "WARNING: Contraints ignored"
    self.window.add(component._getLayoutedContent())
  def _pack(self):
    print "Frame.pack()"
  def _setVisible___boolean(self, visible):
    if visible == 1:
      self.window.show()
  def _setTitle___java_lang_String(self, newTitle):
    self.title = newTitle
    self.window.set_title(newTitle.value)
  def _setLayout___java_awt_LayoutManager(self, newManager):
    self.layoutManager = newManager;
  def _setFont___java_awt_Font(self, newFont):
    self.font = newFont
    
class java_awt_Panel:
  layoutManager = None
  def __init__(self):
    print "Panel initialized"
  def _init_java_awt_Panel(self):
    print "Panel init"
  def _setLayout___java_awt_LayoutManager(self, newLayoutManager):
    self.layoutManager = newLayoutManager
  def _add___java_awt_Component(self, newComponent):
     self.layoutManager._addComponent(newComponent)
  def _getLayoutedContent(self):
    return self.layoutManager._getLayoutedContent()
    
class java_awt_GridLayout:
  width = 0
  height = 0
  table = None
  # Simulate behaviour of GridBagLayout
  numComp = 0
  def __init__(self):
    print "GridLayout initialized"
  def _init_java_awt_GridLayout___int_int(self, newWidth, newHeight):
    self.table = gtk.Table(newWidth, newHeight, True)
    self.table.show()
    self.width = newWidth
    self.height = newHeight
  def _getLayoutedContent(self):
    return self.table
  def _addComponent(self, component):
    gtkComponent = component._getGtkComponent()
    l = (self.numComp % (self.width - 1))
    r = l + 1
    t = int(self.numComp / (self.width - 1))
    b = t + 1
    self.table.attach(gtkComponent, l, r, t, b)
    gtkComponent.show()
    self.numComp = self.numComp + 1

class java_awt_FlowLayout(java_awt_GridLayout):
  def _init_java_awt_FlowLayout(self):
    width=0
    
  
    
 
  <xsl:apply-templates/>
print "Initialized"
org_xml11_demo_step3_AWTCelsiusConverter_main___java_lang_String_ARRAYTYPE(None)
gtk.main()

</xsl:template>

<!-- class -->
<xsl:template match="vm:class">
<xsl:text>
class </xsl:text>
<xsl:call-template name="getPackgePlusClassName">
  <xsl:with-param name="classname" select="@name" />
  <xsl:with-param name="package" select="@package" />
</xsl:call-template>
<xsl:text>(</xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@extends"/>
  </xsl:call-template><xsl:text>):
</xsl:text>
<xsl:apply-templates/>
</xsl:template>


<!-- field -->
<xsl:template match="vm:field">
  <xsl:text>  _</xsl:text>
  <xsl:value-of select="@name"/>
  <xsl:text> = None
</xsl:text>
</xsl:template>


<!--  method -->
<xsl:template match="vm:method[count(@isNative) = 0 or @isNative != 'true']">
  <xsl:call-template name="emitPrototype"/>
      <xsl:text>
      __locals = range(</xsl:text>
    <xsl:value-of select="@locals"/>
    <xsl:text>)</xsl:text>
    <xsl:text>
      __stack = range(</xsl:text>
    <xsl:value-of select="@stack"/>
    <xsl:text>)</xsl:text>
    <xsl:text>
      __sp = 0
      __op1 = 0
      __op2 = 0</xsl:text>
  <xsl:call-template name="initLocals"/>
  <xsl:apply-templates/>
  <xsl:text>
</xsl:text>
</xsl:template>

<xsl:template match="vm:code[count(../@nativeInterface) = 0]">
    <xsl:text>
      __next_label = -1
      while True :
        if __next_label == -1:
</xsl:text>
  <xsl:apply-templates/>
    <xsl:text>
        else:
          print "XMLVM internal error: reached default of switch"
</xsl:text>
</xsl:template>


<!--  
      getPackgePlusClassName
      ======================
-->
<xsl:template name="getPackgePlusClassName">
  <xsl:param name="package" />
  <xsl:param name="classname" />

  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="$package"/>
  </xsl:call-template>

  <xsl:choose>
    <xsl:when test="string-length($package) > 0">
      <xsl:text>_</xsl:text>
    </xsl:when>
  </xsl:choose>

<xsl:value-of select="$classname"/>
</xsl:template>

<!--
   emitScopedName
   ==============
   Writes a scoped name. This function basically translates a Java-style scoped
   name (e.g., java.lang.String) to JavaScript. We simply use name mangling
     for this (e.g., java_lang_String).
   Input: 'string': Java-style scoped name.
-->
<xsl:template name="emitScopedName">
  <xsl:param name="string" />
  <xsl:value-of select="translate($string, '.', '_')"/>

</xsl:template>



<!--
   emitType
   ========
   Emits a type reference. Basic Java types are mapped to certain C++ types
   (e.g., int is mapped to XMLVM::INT). Object references are mapped to
   C++ types of the same name with the suffix '_ref'.
   Input: 'type': Java type
-->
<xsl:template name="emitType">
  <xsl:param name="type"/>
  <xsl:choose>
    <xsl:when test="$type = 'void'">
      <xsl:text>void</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int'">
      <xsl:text>XMLVM::INT</xsl:text>
    </xsl:when>
    <xsl:otherwise>
          <xsl:call-template name="emitScopedName">
            <xsl:with-param name="string" select="$type"/>
          </xsl:call-template>
          <xsl:text>_ref</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!--
   emitPrototype
   =============
   Writes the prototype of a method. Called from within context of tag
   <method>.
-->  
<xsl:template name="emitPrototype">
<!--     <xsl:text>
  def </xsl:text> -->
    <xsl:choose>
      <xsl:when test="@isStatic = 'true'">
      <xsl:text>def </xsl:text>
        <xsl:call-template name="getPackgePlusClassName">
          <xsl:with-param name="package"   select="../@package" />
          <xsl:with-param name="classname" select="../@name" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>  def </xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    
    
    <xsl:choose>
      <xsl:when test="@name = '&lt;init&gt;'">
        <xsl:text>_init_</xsl:text>
          <xsl:call-template name="getPackgePlusClassName">
            <xsl:with-param name="package"   select="../@package" />
            <xsl:with-param name="classname" select="../@name" />
          </xsl:call-template>
          <!-- Append signature to constructor name -->
          <xsl:call-template name="appendSignature">
            <xsl:with-param name="signature" select="vm:signature" />
          </xsl:call-template>
      </xsl:when>
      <xsl:when test="@name = '&lt;clinit&gt;'">
        <xsl:text>_clinit_</xsl:text>
        <xsl:call-template name="getPackgePlusClassName">
          <xsl:with-param name="package"   select="../@package" />
          <xsl:with-param name="classname" select="../@name" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>_</xsl:text><xsl:value-of select="@name"/>
        <!-- Append signature to method name -->
        <xsl:call-template name="appendSignature">
          <xsl:with-param name="signature" select="vm:signature" />
        </xsl:call-template>
      </xsl:otherwise>
  </xsl:choose>
  
     <xsl:choose>  
      <xsl:when test="@isStatic = 'true'">
        <xsl:text>(</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>(self</xsl:text>
       <xsl:if test="count(vm:signature/vm:parameter) > 0" >
         <xsl:text>,</xsl:text>
       </xsl:if>
      </xsl:otherwise>
    </xsl:choose>

  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__arg</xsl:text>
    <xsl:value-of select="position()"/>
  </xsl:for-each>
  <xsl:text>):</xsl:text>
</xsl:template>



<xsl:template name="appendSignature">
  <xsl:param name="signature" />
  <xsl:choose>
    <xsl:when test="count(vm:signature/vm:parameter) != 0">
      <xsl:text>__</xsl:text>
      <xsl:for-each select="vm:signature/vm:parameter">
        <xsl:text>_</xsl:text>
        <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string">
            <xsl:call-template name="replaceString">
              <xsl:with-param name="text" select="@type" />
              <xsl:with-param name="replace">[]</xsl:with-param>
              <xsl:with-param name="with">_ARRAYTYPE</xsl:with-param>
            </xsl:call-template>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>
    </xsl:when>
  </xsl:choose>

</xsl:template>


<!--
   initLocals
   ==========
   This function is called from the template for <method>. Its task is
   to initialize the local variables. This basically means that the
   actual parameters have to be copied to __locals[i]. If the method
   is not static, 'this' will be copied to __locals[0]. This function
   basically only emits code for 'this'. The remaining parameters
   are copied in the template 'initRemainingLocals' below.
-->
<xsl:template name="initLocals">
  <xsl:choose>    
      <xsl:when test="@isStatic = 'true'">
        <xsl:call-template name="initRemainingLocals">
          <xsl:with-param name="offset" select="1"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>
      __locals[0] = self</xsl:text>
        <xsl:call-template name="initRemainingLocals">
          <xsl:with-param name="offset" select="0"/>
        </xsl:call-template>
      </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="initRemainingLocals">
  <xsl:param name="offset"/>
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:text>
      __locals[</xsl:text>
    <xsl:value-of select="position() - $offset"/>
    <xsl:text>] = __arg</xsl:text>
    <xsl:value-of select="position()"/>
    <xsl:text></xsl:text>
  </xsl:for-each>
</xsl:template>


<!-- Replace the substring "replace" by "with" in "text" -->
<xsl:template name="replaceString">
  <xsl:param name="text"/>
  <xsl:param name="replace"/>
  <xsl:param name="with"/>
  <xsl:choose>
    <xsl:when test="contains($text,$replace)">
      <xsl:value-of select="substring-before($text,$replace)"/>
      <xsl:value-of select="$with"/>
      <xsl:call-template name="replaceString">
        <xsl:with-param name="text" select="substring-after($text,$replace)"/>
        <xsl:with-param name="replace" select="$replace"/>
        <xsl:with-param name="with" select="$with"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$text"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!--
   emitMethodName
   ==============
   Called whenever a method name has to be written. If the method happens
   to be a constructor, this function will generate __init() instead.
   Input: 'name': the name of the method to write.
-->
<xsl:template name="emitMethodName">
  <xsl:param name="class-type"/>
  <xsl:param name="name"/>
  <xsl:param name="signature" />

  <xsl:choose>
    <xsl:when test="$name = '&lt;init&gt;'">
      <xsl:text>_init_</xsl:text>
      <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
      <!-- Append signature to constructor name -->
      <xsl:call-template name="appendSignature">
        <xsl:with-param name="signature" select="vm:signature" />
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$name = '&lt;clinit&gt;'">
      <xsl:text>_clinit_</xsl:text>
      <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$name = 'length'">
      <xsl:text>_length</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>_</xsl:text><xsl:value-of select="$name"/>
      <!-- Append signature to method name -->
      <xsl:call-template name="appendSignature">
        <xsl:with-param name="signature" select="vm:signature" />
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>





<!-- ================ BYTECODE COMMANDS ================ -->


<!-- iload, aload, lload -->
<xsl:template match="jvm:iload|jvm:aload|jvm:fload|jvm:lload">
  <xsl:text>
          # iload, aload, lload
          __stack[__sp] = __locals[</xsl:text>
  <xsl:value-of select="@index"/>
  <xsl:text>]
          __sp = __sp + 1</xsl:text>
</xsl:template>

<!-- iconst, dconst -->
<xsl:template match="jvm:iconst|jvm:dconst|jvm:fconst">
  <xsl:text>
          # iconst,dconst
          __stack[__sp] = </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>
          __sp = __sp + 1</xsl:text>
</xsl:template>

<!-- putfield -->
<xsl:template match="jvm:putfield">
    <xsl:text>
          # putfield
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          __op1._</xsl:text>
    <xsl:value-of select="@field"/>
    <xsl:text> = __op2</xsl:text>
</xsl:template>

<!-- new -->
<xsl:template match="jvm:new">
<xsl:text>
          # new</xsl:text>
    <xsl:choose>
        <xsl:when test="count(vm:signature) = 0">
          <xsl:text>
          __stack[__sp] = </xsl:text>
          <xsl:call-template name="emitScopedName">
            <xsl:with-param name="string" select="@type"/>
          </xsl:call-template>
          <xsl:text>()
          __sp = __sp + 1</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>ERROR();// new with signature not handled yet</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<!-- dup -->
<xsl:template match="jvm:dup">
  <xsl:text>
          # dup
          __op1 = __stack[__sp - 1]
          __stack[__sp] = __op1
          __sp = __sp + 1</xsl:text>
</xsl:template>

<!-- ldc, ldc_w, ldc2_w -->
<xsl:template match="jvm:ldc|jvm:ldc_w|jvm:ldc2_w">
<xsl:text>
          # ldc, ldc_w, ldc2_w</xsl:text>
  <xsl:choose>
    <xsl:when test="@type = 'java.lang.String'">
      <xsl:text>
          __stack[__sp] = java_lang_String("</xsl:text>
      <xsl:value-of select="@value"/>
      <xsl:text>")
          __sp = __sp + 1</xsl:text>
    </xsl:when>
        <xsl:when test="@type = 'double'">
            <xsl:text>
          __stack[__sp] = </xsl:text>
            <xsl:value-of select="@value"/>
            <xsl:text>
          __sp = __sp + 1</xsl:text>
        </xsl:when>
        <xsl:when test="@type = 'long'">
            <xsl:text>
          __stack[__sp] = </xsl:text>
            <xsl:value-of select="@value"/>
            <xsl:text>
          __sp = __sp + 1</xsl:text>
        </xsl:when>
        <xsl:when test="@type = 'int'">
            <xsl:text>
          __stack[__sp] = </xsl:text>
            <xsl:value-of select="@value"/>
            <xsl:text>
          __sp = __sp + 1</xsl:text>
        </xsl:when>
        <xsl:when test="@type = 'float'">
            <xsl:text>
          __stack[__sp] = </xsl:text>
            <xsl:value-of select="@value"/>
            <xsl:text>
          __sp = __sp + 1</xsl:text>
        </xsl:when>
    <xsl:otherwise>
      <xsl:text>
            ERROR('ldc-error: </xsl:text>
            <xsl:value-of select="@type"/><xsl:text>   value: </xsl:text><xsl:value-of select="@value"/><xsl:text>');</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- invokevirtual, invokespecial -->
<xsl:template match="jvm:invokevirtual|jvm:invokespecial">
  <xsl:text>
          # invokevirtual, invokespecial</xsl:text>
  <xsl:text>
          __sp -= </xsl:text>
  <xsl:value-of select="count(vm:signature/vm:parameter) + 1"/>
  <xsl:text>
          </xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>__op1 = </xsl:text>
  </xsl:if>
  <xsl:text>__stack[__sp].</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="class-type" select="@class-type"/>
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="signature" select="vm:signature" />
  </xsl:call-template>
  <xsl:text>(</xsl:text>
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__stack[__sp + </xsl:text>
    <xsl:value-of select="position()"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>)</xsl:text>  
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>
          __stack[__sp] = __op1
          __sp = __sp + 1</xsl:text>
  </xsl:if>
</xsl:template>

<!-- invokestatic -->
<xsl:template match="jvm:invokestatic">
  <xsl:text>
          # invokestatic
          __sp -= </xsl:text>
  <xsl:value-of select="count(vm:signature/vm:parameter)"/>
  <xsl:text>
          </xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>__op1 = </xsl:text>
  </xsl:if>
  <xsl:call-template name="emitScopedName">
      <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="class-type" select="@class-type"/>
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="signature" select="vm:signature" />
  </xsl:call-template>
  <xsl:text>(</xsl:text>
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__stack[__sp + </xsl:text>
    <xsl:value-of select="position() - 1"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>)</xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>
          __stack[__sp] = __op1
          __sp = __sp + 1</xsl:text>
  </xsl:if>
</xsl:template>


<!-- pop -->
<xsl:template match="jvm:pop">
    <xsl:text>
          __sp = __sp - 1</xsl:text>
</xsl:template>

<!-- getfield -->
<xsl:template match="jvm:getfield">
    <xsl:text>
          # getfield
          __sp = __sp - 1
          __op1 = __stack[__sp]
          __stack[__sp] = __op1._</xsl:text>
    <xsl:value-of select="@field"/>
    <xsl:text>
          __sp = __sp + 1</xsl:text>
</xsl:template>

<xsl:template match="jvm:istore|jvm:astore|jvm:fstore|jvm:lstore">
  <xsl:text>
          # istore, astore, fstore, lstore
          __sp = __sp - 1
          __locals[</xsl:text>
  <xsl:value-of select="@index"/>
  <xsl:text>] = __stack[__sp]</xsl:text>
</xsl:template>

<!-- ifeq -->
<xsl:template match="jvm:ifeq">
  <xsl:text>
          # ifeq
          __sp = __sp - 1
          __op1 = __stack[__sp];
          if __op1 == 0 :
             __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
             continue</xsl:text>
</xsl:template>

<!-- ifneq -->
<xsl:template match="jvm:ifneq">
  <xsl:text>
          # ifneq
          __sp = __sp - 1
          __op1 = __stack[__sp];
          if __op1 != 0 :
             __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
             continue</xsl:text>
</xsl:template>


<!-- label -->
<xsl:template match="jvm:label">
    <xsl:text>
          __next_label = </xsl:text><xsl:value-of select="@id"/><xsl:text>
        elif __next_label == </xsl:text>
  <xsl:value-of select="@id"/>
  <xsl:text>:</xsl:text>
</xsl:template>

<!-- return -->
<xsl:template match="jvm:return">
  <xsl:text>
          return</xsl:text>
</xsl:template>

<!-- goto, goto_w -->
<xsl:template match="jvm:goto|jvm:goto_w">
  <xsl:text>
          # goto, goto_w
          __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
          continue</xsl:text>
</xsl:template>

<!-- bipush, sipush -->
<xsl:template match="jvm:bipush|jvm:sipush">
  <xsl:text>
          # bipush, sipush
          __stack[__sp] = </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>
          __sp = __sp + 1</xsl:text>
</xsl:template>

<!-- if_icmpne, if_acmpne -->
<xsl:template match="jvm:if_icmpne|jvm:if_acmpne">
  <xsl:text>
          # if_icmpne, if_acmpne
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          if __op1 != __op2:
             __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
             continue</xsl:text>
</xsl:template>

<!-- if_icmplt -->
<xsl:template match="jvm:if_icmplt">
  <xsl:text>
          # if_icmplt
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          if __op1 &lt; __op2:
            __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
            continue</xsl:text>
</xsl:template>

<!-- iinc -->
<xsl:template match="jvm:iinc">
  <xsl:text>
          # iinc
          __locals[</xsl:text><xsl:value-of select="@index"/>
  <xsl:text>] = __locals[</xsl:text><xsl:value-of select="@index"/>
  <xsl:text>] + </xsl:text><xsl:value-of select="@incr"/>
  <xsl:text></xsl:text>
</xsl:template>

<!-- imul, dmul, fmul -->
<xsl:template match="jvm:imul|jvm:dmul|jvm:fmul">
  <xsl:text>
          # imul, dmul, fmul
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          __stack[__sp] = __op1 * __op2
          __sp = __sp + 1</xsl:text>
</xsl:template>

<!-- iadd, dadd, fadd -->
<xsl:template match="jvm:iadd|jvm:dadd|jvm:fadd">
  <xsl:text>
          # iadd, dadd, fadd
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          __stack[__sp] = __op1 + __op2
          __sp = __sp + 1</xsl:text>
</xsl:template>

<!-- if_icmple -->
<xsl:template match="jvm:if_icmple">
  <xsl:text>
          # if_icmple
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          if __op1 &lt;=  __op2:
            __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
            continue</xsl:text>
</xsl:template>


<!-- if_icmpeq -->
<xsl:template match="jvm:if_icmpeq">
  <xsl:text>
          # if_icmpeq
          __sp = __sp - 1
          __op2 = __stack[__sp]
          __sp = __sp - 1
          __op1 = __stack[__sp]
          if __op1 == __op2:
            __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>
            continue</xsl:text>
</xsl:template>


</xsl:stylesheet>