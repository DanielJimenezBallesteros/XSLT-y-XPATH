<?xml version="1.0" encoding="UTF-8"?>
<!--Actividad 3, Requerimiento 2-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" media-type="text/xml"/>

    <!--Primero pasamos a posicionarnos en el nodo raiz del fichero xml-->
    <xml:template mathc="/ite">

        <!--Modificamos el nodo raiz por edix-->
        <edix>

            <!--Ahora convertimos los atributos nombre y web a elementos-->
            <nombre>
                <xsl:value-of select="@nombre"/>
            </nombre>
            <web>
                <xsl:value-of select="@web"/>
            </web>

            <!--Cambiamos de posición los elementos empresa, telefono, director y jefe de estudios-->
            <xsl:copy of select="empresa"/>
            <xsl:copy of select="telefono"/>
            <xsl:copy of select="director"/>
            <xsl:copy of select="jefe_estudios"/>

            <!--Convertimos el elemento id de profesor en atributo-->
            <profesores>
                <xsl:for-each select="profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                    </profesor>
                </xsl:for-each>
            </profesores>