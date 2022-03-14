<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Andres Mancheño Gil</h1>
        <table border="1">
        <tr bgcolor="#FF7F00">
            <th>Título_del_album</th>

            <th>Sello_discográfico</th>

            <th>Año_de_publicación</th>
            
            <th>Cancion</th>

            <th>Duracion</th>
        </tr>
        <xsl:for-each select="CDs/CD">
                <xsl:variable name="Título_del_album">
                    <xsl:value-of select="Título_del_album"/>
                </xsl:variable>    
                <xsl:variable name="Sello_discográfico">
                    <xsl:value-of select="Sello_discográfico"/>
                </xsl:variable>
                <xsl:variable name="Año_de_publicación">
                    <xsl:value-of select="Año_de_publicación"/>
                </xsl:variable>
                <xsl:for-each select="Cancion">
                    <xsl:if test="@tiempo &lt; 6">
                    <tr>
                        <td>
                            <xsl:value-of select="$Título_del_album"/>
                        </td>
                        <td>
                            <xsl:value-of select="$Sello_discográfico"/>
                        </td>
                        <td>
                            <xsl:value-of select="$Año_de_publicación"/>
                        </td>
                        <td>
                            <xsl:value-of select="."/>
                             <br/>
                        </td>
                        <td>
                            <xsl:value-of select="@tiempo"/>
                        </td>
                    </tr>
                </xsl:if>
                </xsl:for-each>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>