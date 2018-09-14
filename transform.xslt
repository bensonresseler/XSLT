<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" />
    <xsl:template match="/klanten">
        <html>
            <head></head>
            <body>
                <table>
                <tr>
                    <th><xsl:text>Provincie</xsl:text></th>
                    <th><xsl:text>Naam</xsl:text></th>
                    <th><xsl:text>Bedrag</xsl:text></th>
                </tr>
                <xsl:apply-templates></xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="text()"/>
    <xsl:template match="klant">
        <tr>
            <td><xsl:value-of select="@provincie" /></td>
            <td><xsl:value-of select="naam" /></td>
            <td><xsl:value-of select="bedrag" /></td>
        </tr>
    </xsl:template>
</xsl:transform>