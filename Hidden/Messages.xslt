<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <HTML>
      <BODY>
        <TABLE cellspacing="10" cellpadding="4">
          <xsl:for-each select="comments/Comment">
            <TR>
              <TD>
                <div id="mpp2">
                  Subject: "<xsl:value-of select="Subject"/>" <br></br>
                </div>
                <div id="mpp3">
                  <xsl:value-of select="First_Name"/><span id="mps1">_</span><xsl:value-of select="Last_Name"/> said: <br></br>
                </div>
                <div id="mpp4">
                  <xsl:value-of select="Message"/><br></br>
                  <div id="mpp5">
                    <hr />
                  You can reply to them at: <xsl:value-of select="Email"/> <br></br>
                    <hr />
                  </div>
                </div>
                <BR></BR>
              </TD>
            </TR>
          </xsl:for-each>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>
