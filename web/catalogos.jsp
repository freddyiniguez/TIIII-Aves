<%-- 
    Document   : catalogos
    Created on : May 25, 2015, 10:58:25 PM
    Author     : Freddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <!-- Método que valida los campos para que no los envíe vacíos -->
        <script language="javascript">
            function validaCampos(){
                alert("Todos los campos son correctos");
            }
        </script>
        
        <!-- Método que valida que el campo de especie exista para poder buscarlo -->
        <script language="javascript">
            function validaEspecie(){
                if(document.getElementById("txtEspecie").value === "")
                    alert("Por favor, primero ingresa un nombre de especie a buscar");
                else
                    alert("Se buscara la especie primero. Buscando...");
            }
        </script>

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
				<li><a href="consultas.jsp">Consultas</a></li>
				<li class="current_page_item"><a href="#">Catálogos</a></li>
				<li><a href="about.jsp">Acerca de</a></li>
			</ul>
		</div>
            </div>
        </div>
        <div id="wrapper">
        <div style="text-align: left; margin-left: 2em">
            <h1>Catálogo de Especie</h1>
        </div>
	<div id="featured-wrapper">
		<div class="extra2 margin-btm container">
                    <div>
                        <div class="extra2 margin-btm container">
                            <div class="ebox1">
                                <div>
                                    <label class="etiqueta" style="margin-left: 3.2em;">Especie</label>
                                    <input id="txtEspecie" class="entrada" type="text" name="txtEspecie">
                                    <button type="button" name="btnBuscar" class="button" onclick="validaEspecie()" style="padding:0.2em 0.2em;letter-spacing: 0em;">Buscar</button>
                                </div>
                                <div>
                                    <label class="etiqueta">Mínimo</label>
                                    <input class="entrada" type="number" name="txtMinimo">
                                </div>
                                <div>
                                    <label class="etiqueta">Máximo</label>
                                    <input class="entrada" type="number" name="txtMaximo">
                                </div>
                                <div>
                                    <label class="etiqueta">Relativa</label>
                                    <input class="entrada" type="number" name="txtARelativa">
                                </div>
                            </div>  
                            <div class="ebox2">
                                <div>
                                    <label class="etiqueta">Sensible</label>
                                    <input class="entrada" type="number" name="txtSensible" style="margin-top: 2em">
                                </div>
                                <div>
                                    <label class="etiqueta">Conserva</label>
                                    <input class="entrada" type="number" name="txtConserva">
                                </div>
                                <div>
                                    <label class="etiqueta">Investiga</label>
                                    <input class="entrada" type="number" name="txtInvestiga">
                                </div>
                                <div>
                                    <label class="etiqueta" style="margin-right: 2em">Notas</label>
                                    <input class="entrada" type="text" name="txtNotas">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="extra2 margin-btm container">
                            <button type="button" name="btnAgregar" class="button" onclick="validaCampos()" style="margin-right: 5em">Agregar</button>
                            <button type="button" name="btnEliminar" class="button" onclick="validaEspecie()" style="margin-right: 5em">Eliminar</button>
                            <button type="button" name="btnGuardar" class="button" onclick="validaCampos()">Guardar</button>
                        </div>
                    </div>
                    <div>
                        <table class="especies" style="overflow: auto;">
                            <thead>
                            <tr>
                                <th>Especie</th>
                                <th>Mínimo</th>
                                <th>Máximo</th>
                                <th>Relativa</th>
                                <th>Sensible</th>
                                <th>Conserva</th>
                                <th>Investiga</th>
                                <th>Notas</th>
                            </tr>
                            </thead>
                            <tbody style="height: 300px; overflow: auto;"
                            <tr>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                            </tr>
                            <tr class="alt">
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                            </tr>
                            <tr>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                            </tr>
                            <tr class="alt">
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                            </tr>
                            <tr>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                            </tr>
                            <tr class="alt">
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                                <td>Dato</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
		</div>	<!-- Aquí termina etiqueta Extra2 -->
	</div>
</div>
<div id="copyright" class="container">
	<p>&copy; Aves del Neotrópico. Todos los derechos reservados. | Contenido por <a href="http://www.twitter.com/freddyiniguez/" target="_blank">Com-fred</a> | Plantilla de <a href="http://templated.co" target="_blank">TEMPLATED</a>.</p>
</div>
    </body>
</html>
