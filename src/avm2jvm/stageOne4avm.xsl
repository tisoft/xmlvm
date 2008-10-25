<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                xmlns:xs  = "http://www.w3.org/2001/XMLSchema"
                xmlns:vm  = "http://xmlvm.org"
                xmlns:clr = "http://xmlvm.org/clr"
                xmlns:jvm = "http://xmlvm.org/jvm"
                xmlns:dfa = "http://xmlvm.org/dfa"
                version="2.0">

<xsl:import href="dfa4avm.xsl" />
                
 <xsl:template match="vm:xmlvm">
  <vm:xmlvm>
    <xsl:copy-of select="@*"/>
    <xsl:variable name="begin">
      <xsl:apply-templates mode="prepare-dfa"/>
    </xsl:variable>
  <xsl:sequence select="$begin"/>

  </vm:xmlvm>
</xsl:template>
                
</xsl:stylesheet>
