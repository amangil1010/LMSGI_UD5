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
        </tr>
        <xsl:for-each select="CDs/CD[Título_del_album='EL JAVI']">
        <tr>
            <td>
                <xsl:value-of select="Título_del_album"/>
            </td>
            <td>
                <xsl:value-of select="Sello_discográfico"/>
            </td>
            <td>
                <xsl:value-of select="Año_de_publicación"/>
            </td>
            <td>
                <xsl:for-each select="Cancion">
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each>
            </td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>