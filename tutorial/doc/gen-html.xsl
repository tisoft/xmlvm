<?xml version="1.0"?>

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

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs ="http://www.w3.org/2001/XMLSchema"
                version="1.0">


<xsl:output method="html" indent="yes"/>


<xsl:template match="tutorial"> 
  <html>
    <head>
      <title><xsl:value-of select="@title"/></title>
      <base href="../../"/>
    </head>
    <body>
      <h1><xsl:value-of select="@title"/></h1>
      <xsl:apply-templates/>
    </body>
  </html>
</xsl:template>


<xsl:template match="ios-tutorials">
   <h3>iOS Applications</h3>
   <xsl:apply-templates/>
</xsl:template>


<xsl:template match="android-tutorials">
   <h3>Android Applications</h3>
   <xsl:apply-templates/>
</xsl:template>


<xsl:template match="tutorials">
   <ul>
     <xsl:apply-templates/>
   </ul>
</xsl:template>



<xsl:template match="application">
  <li>
    <a><xsl:attribute name="href"><xsl:value-of select="@link"/>/dist/javadoc/index.html</xsl:attribute><xsl:value-of select="@name"/></a>
    (<a><xsl:attribute name="href"><xsl:value-of select="@link"/></xsl:attribute>xmlvm/<xsl:value-of select="@link"/></a>)
    <br/>
    <xsl:apply-templates/>
    <p/>
  </li>
</xsl:template>


<xsl:template match="text">
  <xsl:value-of select="."/>
</xsl:template>


</xsl:stylesheet>
