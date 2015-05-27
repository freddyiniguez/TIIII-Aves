<%-- 
    Document   : consultas
    Created on : May 25, 2015, 10:59:20 PM
    Author     : Freddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="controllers.EspecieController"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Aves del Neotrópico</title>
        <meta name="keywords" content="aves" />
        <meta name="description" content="Sistema de consulta de aves del neotrópico americano." />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="shortcut icon" href="images/icon.ico"/>

        <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="logo">
                    <h1><a href="index.jsp">Aves del Neotrópico</a></h1>
                </div>
                <div id="menu">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li class="current_page_item"><a href="#">Consultas</a></li>
                        <li><a href="catalogos.jsp">Catálogos</a></li>
                        <li><a href="about.jsp">Acerca de</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="wrapper">
            <div id="featured-wrapper">
                <div class="extra2 margin-btm container">
                    <form id="form1" name="form1" method="post" action="">
                        <label>Consulta especies</label>
                        <input id="btnConsultar" name="btnConsultar" type="submit" value="Consultar"/>
                        <textarea name="txtAConsulta" rows="4" cols="100" style="width: 1170px;height: 192px;">Aquí va el texto de su consulta</textarea>
                    </form>
                    <%if (request.getParameter("btnConsultar") != null) {
                        System.out.println("La especie es: "+EspecieController.getEspecie());
                    %>
                    
                    <%
                    }
                    %>
                </div>	
            </div>
        </div>
        <div id="copyright" class="container">
            <p>&copy; Aves del Neotrópico. Todos los derechos reservados. | Contenido por <a href="http://www.twitter.com/freddyiniguez/" target="_blank">Com-fred</a> | Plantilla de <a href="http://templated.co" target="_blank">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
