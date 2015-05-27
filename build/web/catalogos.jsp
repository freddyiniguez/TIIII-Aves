<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.util.*,database.*,controllers.*"%>
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
            function validaCampos() {
                if(document.getElementById("txtEspecie").value === "" || document.getElementById("txtMinimo").value === "" || document.getElementById("txtMaximo").value === "" || document.getElementById("txtArelativa").value === "" || document.getElementById("txtSensible").value === "" || document.getElementById("txtConserva").value === "" || document.getElementById("txtInvestiga").value === "" || document.getElementById("txtNotas").value === ""){
                    alert("Por favor asegurate de ingresar los datos.");
                    return false;
                }else
                    return true;
            }
        </script>

        <!-- Método que valida que el campo de especie exista para poder buscarlo -->
        <script language="javascript">
            function validaEspecie() {
                if (document.getElementById("txtEspecie").value === ""){
                    alert("Por favor, primero ingresa un nombre de especie a buscar");
                    return false;
                }else
                    return true;
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
                        <form id="formgeneral" name="formgeneral" method="post" action="">
                        <div class="extra2 margin-btm container">
                            <div class="ebox1">
                                <div>
                                    <label class="etiqueta" style="margin-left: 3.2em;">Especie</label>
                                    <input id="txtEspecie" class="entrada" id="txtEspecie" type="text" name="txtEspecie">
                                    <button type="submit" name="btnBuscar" class="button" style="padding:0.2em 0.2em;letter-spacing: 0em;">Buscar</button>
                                </div>
                                <div>
                                    <label class="etiqueta">Mínimo</label>
                                    <input class="entrada" type="text" id="txtMinimo" name="txtMinimo">
                                </div>
                                <div>
                                    <label class="etiqueta">Máximo</label>
                                    <input class="entrada" type="text" id="txtMaximo" name="txtMaximo">
                                </div>
                                <div>
                                    <label class="etiqueta">Relativa</label>
                                    <input class="entrada" type="text" id="txtARelativa" name="txtARelativa">
                                </div>
                            </div>  
                            <div class="ebox2">
                                <div>
                                    <label class="etiqueta">Sensible</label>
                                    <input class="entrada" type="text" id="txtSensible" name="txtSensible" style="margin-top: 2em">
                                </div>
                                <div>
                                    <label class="etiqueta">Conserva</label>
                                    <input class="entrada" type="text" id="txtConserva" name="txtConserva">
                                </div>
                                <div>
                                    <label class="etiqueta">Investiga</label>
                                    <input class="entrada" type="text" id="txtInvestiga" name="txtInvestiga">
                                </div>
                                <div>
                                    <label class="etiqueta" style="margin-right: 2em">Notas</label>
                                    <input class="entrada" type="text" id="txtNotas" name="txtNotas">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="extra2 margin-btm container">
                            <button type="submit" name="btnAgregar" class="button" style="margin-right: 5em">Agregar</button>
                            <button type="submit" name="btnEliminar" class="button" style="margin-right: 5em">Eliminar</button>
                            <button type="submit" name="btnModificar" class="button" style="margin-right: 5em">Modificar</button>
                            <button type="submit" name="btnConsultar" class="button">Consultar</button>
                        </div>
                    </div>
                    </form>
                    <div>
                        <!-- /** Procedimiento. Agrega una especie especificando los datos del formulario **/ -->
                        <%
                            if(request.getParameter("btnAgregar") != null){
                                int idorden = 0;
                                int idfamilia = 0;
                                int idgenero = 0;
                                String especie = request.getParameter("txtEspecie");
                                int idmicrohabitat = 0;
                                int idestrato = 0;
                                String minimo = request.getParameter("txtMinimo");
                                String maximo = request.getParameter("txtMaximo");
                                int idcentroA = 0;
                                int arelativa = Integer.valueOf(request.getParameter("txtARelativa"));
                                int sensible = Integer.valueOf(request.getParameter("txtSensible"));
                                int pconserva = Integer.valueOf(request.getParameter("txtConserva"));
                                int pinvestiga = Integer.valueOf(request.getParameter("txtInvestiga"));
                                String notas = request.getParameter("txtNotas");
                                boolean verif = EspecieController.procedimientoInsertaEspecie(idorden, idfamilia, idgenero, especie, idmicrohabitat, idestrato, minimo, maximo, idcentroA, arelativa, sensible, pconserva, pinvestiga, notas);
                                if (verif) {%>         
                                    <script> alert ('Especie agregada con éxito'); </script> 
                                <%
                                }else{%>         
                                    <script> alert ('Hubo un problema al guardar la especie'); </script> 
                                <%
                                }
                            }
                        %>
                        <!-- /** Procedimiento. Elimina una especie. Se le debe indicar el nombre de la especie. **/ -->
                        <%
                            if(request.getParameter("btnEliminar")!=null){
                                String especie = request.getParameter("txtEspecie");
                                boolean verif = EspecieController.eliminarEspecie(especie);
                                if (verif) {%>         
                                    <script> alert ('Especie eliminada con éxito'); </script> 
                                <%
                                }
                        }%>
                        
                        <!-- /** Procedimiento. Modifica los datos de una especie. **/ -->
                        <%
                            if(request.getParameter("btnModificar") != null){
                                int idorden = 0;
                                int idfamilia = 0;
                                int idgenero = 0;
                                String especie = request.getParameter("txtEspecie");
                                int idmicrohabitat = 0;
                                int idestrato = 0;
                                String minimo = request.getParameter("txtMinimo");
                                String maximo = request.getParameter("txtMaximo");
                                int idcentroA = 0;
                                int arelativa = Integer.valueOf(request.getParameter("txtARelativa"));
                                int sensible = Integer.valueOf(request.getParameter("txtSensible"));
                                int pconserva = Integer.valueOf(request.getParameter("txtConserva"));
                                int pinvestiga = Integer.valueOf(request.getParameter("txtInvestiga"));
                                String notas = request.getParameter("txtNotas");
                                boolean verif = EspecieController.modificarEspecie(especie, minimo, maximo, arelativa, sensible, pconserva, pinvestiga, notas);
                                if (verif) {%>         
                                    <script> alert ('Especie modificada con éxito'); </script> 
                                <%
                                }else{%>         
                                    <script> alert ('Hubo un problema al modificar la especie'); </script> 
                                <%
                                }
                            }
                        %>
                        
                        <!-- /** Procedimiento. Obtiene una especie y llena los campos. **/ -->
                        <%
                            if(request.getParameter("btnBuscar")!=null){
                                String especie = request.getParameter("txtEspecie");
                                List<Especie> lista = EspecieController.obtenerEspecie(especie);
                                Iterator<Especie> it = lista.iterator();
                                
                                while (it.hasNext()) {
                                    Especie esp = it.next();
                                %>
                                <script>
                                var elem = document.getElementById("txtEspecie");
                                elem.value = "<%= esp.getEspecie()%>";
                                var elem = document.getElementById("txtMinimo");
                                elem.value = "<%= esp.getMinimo()%>";
                                var elem = document.getElementById("txtMaximo");
                                elem.value = "<%= esp.getMaximo()%>";
                                var elem = document.getElementById("txtARelativa");
                                elem.value = "<%= esp.getArelativa()%>";
                                var elem = document.getElementById("txtSensible");
                                elem.value = "<%= esp.getSensible()%>";
                                var elem = document.getElementById("txtConserva");
                                elem.value = "<%= esp.getPconserva()%>";
                                var elem = document.getElementById("txtInvestiga");
                                elem.value = "<%= esp.getPinvestiga()%>";
                                var elem = document.getElementById("txtNotas");
                                elem.value = "<%= esp.getNotas()%>";
                                </script>
                                <%}
                                
                        }%>
                        
                        <!-- /** Procedimiento. Consulta las especies de la BD y las muestra en una tabla. **/ -->
                        <%
                            if (request.getParameter("btnConsultar") != null) {
                                List<Especie> lista = EspecieController.obtenerTablaEspecies();
                                Iterator<Especie> it = lista.iterator();
                        %>
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
                            <%
                                while (it.hasNext()) {
                                    Especie especie = it.next();
                            %>
                            <tr>
                                <td><%= especie.getEspecie()%></td>
                                <td><%= especie.getMinimo()%></td>
                                <td><%= especie.getMaximo()%></td>
                                <td><%= especie.getArelativa()%></td>
                                <td><%= especie.getSensible()%></td>
                                <td><%= especie.getPconserva()%></td>
                                <td><%= especie.getPinvestiga()%></td>
                                <td><%= especie.getNotas()%></td>
                            </tr>
                            <%
                                }
                            %> 
                        </table>
                        <%
                            }
                        %>
                    </div>
                </div>	<!-- Aquí termina etiqueta Extra2 -->
            </div>
        </div>
        <div id="copyright" class="container">
            <p>&copy; Aves del Neotrópico. Todos los derechos reservados. | Contenido por <a href="http://www.twitter.com/freddyiniguez/" target="_blank">Com-fred</a> | Plantilla de <a href="http://templated.co" target="_blank">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
