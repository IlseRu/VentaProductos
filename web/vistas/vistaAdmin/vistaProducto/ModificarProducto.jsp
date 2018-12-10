<%-- 
    Document   : ModificarGrupo
    Created on : 20/11/2018, 11:10:16 PM
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
                    <a href="<%=context%>/consultarGrupo" class="btn btn-success">Regresar</a>
                    <br>
                    <form class="form-group" method="post" action="modificarGrupo">
                        <input type="hidden" name="bean.idGrupo" value="<s:property value="bean.idGrupo"/>">
                        <div class="form-group">
                            <label>Grupo:</label>
                            <input type="text" class="form-control" name="bean.nombreGrupo" value="<s:property value="bean.nombreGrupo"/>">
                        </div>
                        <div class="form-group">
                            <label>Cuatrimestre:</label>
                            <input type="number" class="form-control" name="bean.cuatrimestre" value="<s:property value="bean.cuatrimestre"/>">
                        </div>
                        <div class="form-group">
                            <label>Estado:</label>
                            <select class="form-control" name="bean.estado">
                                <s:if test="bean.estado == 1">
                                    <option value="<s:property value="bean.estado"/>" selected="">Activa</option>
                                    <option value="0">Inactiva</option> 
                                </s:if>
                                <s:else>
                                    <option value="<s:property value="bean.estado"/>" selected="">Inactiva</option>
                                    <option value="1">Activa</option> 
                                </s:else>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Capacidad de estudiantes:</label>
                            <input type="number" class="form-control" name="bean.capacidadEstudiantes" value="<s:property value="bean.capacidadEstudiantes"/>">
                        </div>
                        <div class="form-group">
                            <label>turno</label>
                            <input type="text" class="form-control" name="bean.turno" value="<s:property value="bean.turno"/>">
                        </div>
                        <div class="form-group">
                            <label>Período:</label>
                            <select class="form-control" name="bean.periodo.idPeriodo">
                                <s:set value="bean.periodo.idPeriodo" var="idP"/>
                                <s:iterator value="listaP" status="stat" var="lista">
                                    <s:set value="idPeriodo" var="P"/>
                                    <s:if test="idP == P">
                                        <option value="<s:property value="idPeriodo"/>" selected=""><s:property value="nombrePeriodo"/></option> 
                                    </s:if>
                                    <s:else>
                                        <option value="<s:property value="idPeriodo"/>"><s:property value="nombrePeriodo"/></option> 
                                    </s:else>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Especialidad:</label>
                            <select class="form-control" name="bean.especialidad.idEspecialidad">
                                <s:set value="bean.especialidad.idEspecialidad" var="idE"/>
                                <s:iterator value="listaE" var="lista" status="stat">
                                    <s:set value="idEspecialidad" var="E"/>
                                    <s:if test="idE == E">
                                        <option value="<s:property value="idEspecialidad"/>" selected=""><s:property value="nombreEspecialidad"/></option>
                                    </s:if>
                                    <s:else>
                                        <option value="<s:property value="idEspecialidad"/>"><s:property value="nombreEspecialidad"/></option>
                                    </s:else>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Generación:</label>
                            <select class="form-control" name="bean.generacion.idGeneracion">
                                <s:set value="bean.generacion.idGeneracion" var="idG"/>
                                <s:iterator value="listaG" var="lista" status="stat">
                                    <s:set value="idGeneracion" var="G"/>
                                    <s:if test="idG == G">
                                        <option value="<s:property value="idGeneracion"/>" selected=""><s:property value="nombreGeneracion"/></option>
                                    </s:if>
                                    <s:else>
                                        <option value="<s:property value="idGeneracion"/>"><s:property value="nombreGeneracion"/></option>
                                    </s:else>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-block btn-primary" value="Modificar">
                        </div>
                    </form>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>
    </body>
</html>
