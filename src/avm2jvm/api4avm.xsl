<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                xmlns:vm  = "http://xmlvm.org"
                xmlns:clr = "http://xmlvm.org/clr"
                xmlns:jvm = "http://xmlvm.org/jvm"
                xmlns:dfa = "http://xmlvm.org/dfa"
                version="2.0">

<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/>


<!-- TODO Not used anymore since we now use System.String instead of java.lang.String -->
<xsl:template match="jvm:invokevirtual[@class-type = 'XXXSystem.String' and @method = 'get_Length']">
  <jvm:invokevirtual class-type="java.lang.String" method="length">
    <vm:signature>
      <vm:return type="int"/>
    </vm:signature>
  </jvm:invokevirtual>
</xsl:template>


    
<xsl:template match="*">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>