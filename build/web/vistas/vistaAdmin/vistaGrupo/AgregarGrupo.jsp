<%-- 
    Document   : AgregarGrupo
    Created on : 20/11/2018, 11:10:03 PM
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
                <div class="col-lg-3">
                </div>
                <div class="col-lg">
                    <a href="<%=context%>//vistas/vistaAdmin/Inicio.jsp" class="btn btn-success">Inicio</a>
                    <br>
                    <form class="form-group" method="post" action="agregarGrupo">
                        <div class="form-group">
                            <label>Grupo:</label>
                            <input type="text" class="form-control" name="bean.nombreGrupo">
                        </div>
                        <div class="form-group">
                            <label>Cuatrimestre:</label>
                            <input type="number" class="form-control" name="bean.cuatrimestre">
                        </div>
                        <div class="form-group">
                            <label>Estado:</label>
                            <select class="form-control" name="bean.estado">
                                <option>Seleccione...</option>
                                <option value="1">Activa</option>
                                <option value="0">Inactiva</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-group">
                                <label>Capacidad de estudiantes:</label>
                                <input type="number" class="form-control" name="bean.capacidadEstudiantes">
                            </div>
                            <label>turno</label>
                            <input type="text" class="form-control" name="bean.turno">
                        </div>
                        <div class="form-group">
                            <label>Período:</label>
                            <select class="form-control" name="bean.periodo.idPeriodo">
                                <option>Seleccione...</option>
                                <s:iterator value="listaP" status="stat" var="lista">
                                    <option value="<s:property value="idPeriodo"/>"><s:property value="nombrePeriodo"/></option>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Especialidad:</label>
                            <select class="form-control" name="bean.especialidad.idEspecialidad">
                                <option>Seleccione...</option>
                                <s:iterator value="listaE" var="lista" status="stat">
                                    <option value="<s:property value="idEspecialidad"/>"><s:property value="nombreEspecialidad"/></option>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Generación:</label>
                            <select class="form-control" name="bean.generacion.idGeneracion">
                                <option>Seleccione...</option>
                                <s:iterator value="listaG" var="lista" status="stat">
                                    <option value="<s:property value="idGeneracion"/>"><s:property value="nombreGeneracion"/></option>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-block btn-primary" value="Registrar">
                        </div>
                    </form>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>
    </body>
</html>
