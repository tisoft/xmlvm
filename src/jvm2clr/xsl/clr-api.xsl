<?xml version="1.0" encoding="utf-8"?>

<!--
 * Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
-->

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                xmlns:vm  = "http://xmlvm.org"
                xmlns:clr = "http://xmlvm.org/clr"
                xmlns:jvm = "http://xmlvm.org/jvm"
                xmlns:dfa = "http://xmlvm.org/dfa"
                version="2.0">

<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/>


<xsl:template match="vm:class">
  <vm:class>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
    <xsl:if test="vm:method[@name = 'main']">

        <!-- Add a Main() method for .NET that just simply calls the
             main() method from Java. -->
        <vm:method name="Main" isPublic="true" isStatic="true" stack="1" locals="0">
          <vm:signature>
            <vm:return type="void" />
          </vm:signature>
          <vm:code language="ByteCode">
            <clr:ldnull/>
            <clr:call has-this="false" method="main">
              <xsl:attribute name="class-type" select="concat(@package, '.', @name)"/>
              <vm:signature>
                <vm:return type="void" />
                <vm:parameter type="java.lang.String[]"/>
              </vm:signature>
            </clr:call>
            <clr:return/>
          </vm:code>
        </vm:method>
            
    </xsl:if>
  </vm:class>
</xsl:template>


<!-- Rename field references from 'out' to '_out' since the former
     happens to be a keyword in C# -->
<xsl:template match="*[@field = 'out']">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:attribute name="field" select="'_out'"/>
  </xsl:copy>
</xsl:template>


    
<xsl:template match="*">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>