<%-- 
    Document   : Periodo
    Created on : 20/11/2018, 10:11:12 PM
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
                                <td>Periodo</td>
                                <td>Fecha Inicio</td>
                                <td>Fecha Fin</td>
                                <td>Acciones</td>
                            </tr>
                        </thead>
                        <tbody>
                            <s:iterator value="lista" var="lista" status="stat">
                                <tr>
                                    <td><s:property value="#stat.count"/></td>
                                    <td><s:property value="nombrePeriodo"/></td>
                                    <td><s:property value="fechaInicio"/></td>
                                    <td><s:property value="fechaFin"/></td>
                                    <td>
                                        <form method="post" action="consultaEspecificaPeriodo">
                                            <input type="hidden" name="bean.idPeriodo" value="<s:property value="idPeriodo"/>">
                                            <input type="submit" class="btn btn-primary" value="Modificar">
                                        </form>
                                    </td>
                                    <td>
                                        <form method="post" action="eliminarPeriodo">
                                            <input type="hidden" name="bean.idPeriodo" value="<s:property value="idPeriodo"/>">
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
