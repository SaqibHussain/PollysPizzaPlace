<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <HTML>
      <BODY>
          <TABLE cellspacing="10" cellpadding="4">
            <xsl:for-each select="news/Article">
              <TR>
                <TD>
                  <div id="npp2">
                    <xsl:value-of select="Topic"/>
                    Posted: <xsl:value-of select="Date"/>
                  </div>
                  <BR></BR>
                  <div id="npp3">
                    <xsl:value-of select="Text"/>
                  </div>
                </TD>
              </TR>
            </xsl:for-each>
          </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>
