<?xml version="1.0" encoding="UTF-8"?>
<!--Actividad 3, Requerimiento 1-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/ite">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>EDIX</title>
                <link rel="stylesheet" type="text/css" href="css/estilos.css">
            </head>
            <body>
                <div class="contenedor">
                    <header>
                        <h1>
                            <xsl:value-of select="@nombre"/>
                        </h1>
                        <h2>
                            Teléfono de contacto: <xsl:value-of select="telefono"/><br/>
                            Empresa: <xsl:value-of select="empresa"/><br/>
                            Pagina web: <a href="{@web}" target="_blank"> <xsl:value-of select="@web"/> </a>
                        </h2>
                    </header>
                    <!--Primera Tabla con los profesores y su ID-->
                    <section>
                        <table>
                            <caption>
                                <h3>
                                    Profesorado
                                </h3>
                            </caption>
                            <th1>
                                <tr>
                                    <th>
                                        ID
                                    </th>
                                    <th>
                                        nombre
                                    </th>
                                </tr>
                            <th1>
                            <th2>
                                <xsl:for-each select="profesores/profesor">
                                <tr>
                                    <td>
                                        <xsl:value-of select="id">
                                    </td>
                                </tr>
                                </xsl:for-each>
                            <th2>
                        </table>
                        <!--Lista no ordenada con el director y el jefe de estudios-->
                        <ul>
                            <h3>
                                Direccion del centro formativo
                            </h3>
                            <li>
                                Director:<xsl:value-of select="director/nombre">/<br/> Despacho: <xsl:value-of select="director/despacho"/>
                            </li>
                            <li>
                                Jefe de estudios:<xsl:value-of select="jefe_estudios/nombre">/<br/> Despacho: <xsl:value-of select="jefe_estudios/despacho"/>
                            </li>
                        </ul>
                        <!--Segunda Tabla con los ciclos formativos y los datos que contiene-->
                        <table>
                            <caption>
                                <h3>
                                    Ciclos Formativos
                                </h3>
                            </caption>
                            <tr>
                                <th>
                                    Nombre
                                </th>
                                <th>
                                    ID
                                </th>
                                <th>
                                    Grado
                                </th>
                                <th>
                                    Año
                                </th>
                            </tr>
                            <xsl:for-each select="ciclos/ciclo">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@id"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="grado"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="decretoTitulo/@año"/>
                                    </td>
                                </tr>
                            <xsl:for-each>
                        </table>
                    </section>
                    <!--Formulario de contacto que cuenta con los ciclos formativos de la lista de consultas-->
                    <aside>
                        <div class="margen">
                            <h2>
                                Formulario de consultas
                            </h2>
                        </div>

                        <form>
                            <div class="formulario">
                                <p>
                                    <label for="nombre">Nombre: </label>
                                    <input type="text" name="nombre" placeholder="Escribe tu Nombre y Apellidos" size="35" autofocus="">
                                </p>
                                <p>
                                    <label for="email">E-mail: </label>
                                    <input type="email" name="email" placeholder="Escribe tu e-mail" size="35" required="">
                                </p>

                                <!--A continuación, añadimos el desplegable con los ciclos formativos-->
                                <p>
                                    <label for="ciclo">Ciclo: </label>
                                    <select name="ciclo">
                                        <option value="consulta" selected=""> ---------------</option>
                                        <xsl:for-each select="ciclos/ciclo">
                                            <xsl:element name="option">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of select="@id"/>
                                                </xsl:attribute>
                                                </xsl:value-of select="nombre"/>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </select>
                                </p>
                            </div>

                            <!--Caja de comentarios-->

                            <p>
                                <label for="comentarios">Comentarios: </label>
                                <br/>
                                <textarea rows="10" cols="45" name="comentarios"></textarea>
                            </p>

                            <!--Metemos un botón de reset y otro de summit que envía los datos del formulario-->
                            <p>
                                <input type="summit" value="Enviar datos" />
                                <input type="reset" value="Limpiar formulario" />
                            </p>
                        </form>
                    </aside>
                </div>
            </body>
        </html>
    <xsl:template>
<xsl:stylesheet>
                            


                                

