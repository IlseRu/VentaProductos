<%-- 
    Document   : Grupo
    Created on : 20/11/2018, 11:09:51 PM
    Author     : lfern
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String context = request.getContextPath();%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<%=context%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=context%>/css/bootstrap.css" rel="stylesheet">

        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg">
                    <a href="<%=context%>/vistas/vistaAdmin/Inicio.jsp" class="btn btn-success">Inicio</a>
                    <br>
                    <table class="table table-hover table-responsive-lg table-striped table-primary">
                        <thead class="thead-dark">
                            <tr>
                                <td>No.</td>
                                <td>Grupo</td>
                                <td>Cuatrimestre</td>
                                <td>Estado</td>
                                <td>Capacidad</td>
                                <td>Turno</td>
                                <td>Período</td>
                                <td>Especialidad</td>
                                <td>Generación</td>
                                <td>Acciones</td>
                            </tr>
                        </thead>
                        <tbody>
                            <s:iterator value="lista" status="stat" var="lista">
                                <tr>
                                    <td><s:property value="#stat.count"/></td>
                                    <td><s:property value="nombreGrupo"/></td>
                                    <td><s:property value="cuatrimestre"/></td>
                                    <td>
                                        <s:if test="estado == 1">
                                            Activa
                                        </s:if>
                                        <s:else>
                                            Inactiva
                                        </s:else>
                                    </td>
                                    <td><s:property value="capacidadEstudiantes"/></td>
                                    <td><s:property value="turno"/></td>
                                    <td><s:property value="periodo.nombrePeriodo"/></td>
                                    <td><s:property value="especialidad.nombreEspecialidad"/></td>
                                    <td><s:property value="generacion.nombreGeneracion"/></td>
                                    <td>
                                        <form action="consultaEspecificaGrupo" method="post">
                                            <input type="hidden" name="bean.idGrupo" value="<s:property value="idGrupo"/>">
                                            <input type="submit" class="btn btn-primary" value="Modificar">
                                        </form>
                                    </td>
                                    <td>
                                        <form action="eliminarGrupo" method="post">
                                            <input type="hidden" name="bean.idGrupo" value="<s:property value="idGrupo"/>">
                                            <input type="submit" class="btn btn-danger" value="Eliminar">
                                        </form>
                                    </td>
                                </tr>
                            </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
