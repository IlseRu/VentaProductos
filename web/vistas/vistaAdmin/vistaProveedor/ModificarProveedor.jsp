<%-- 
    Document   : ModificarCarrera
    Created on : 19/11/2018, 06:36:53 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%String context = request.getContextPath();%>
<!DOCTYPE html>
<html>
    <head>

        <link href="<%=context%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=context%>/css/bootstrap.css" rel="stylesheet">

        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarCarrera</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg">
                    <a href="<%=context%>/consultarCarrera" class="btn btn-success">Regresar</a>
                    <br>
                    <form method="post" action="modificarCarrera" class="form-group">
                        <input type="hidden" name="bean.idCarrera" value="<s:property value="bean.idCarrera"/>"/>
                        <div class="form-group">
                            <label>Nombre de la Carrera:</label>
                            <input type="text" class="form-control" name="bean.nombreCarrera" id="nombreCarrera" value="<s:property value="bean.nombreCarrera"/>">
                        </div>
                        <div class="form-group">
                            <label>Clave SEP:</label>
                            <input type="text" id="claveSEP" class="form-control" name="bean.claveSEP" value="<s:property value="bean.claveSEP"/>"/>
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
                            <label>División Académica:</label>
                            <select class="form-control" name="bean.divisionAcademica.idDivisionAcademica">
                                <s:set value="bean.divisionAcademica.idDivisionAcademica" var="idDiv"/>
                                <s:iterator value="listadiv" status="stat" var="lista">
                                    <s:set value="idDivisionAcademica" var="idD"/>
                                    <s:if test="idDiv == idD">
                                        <option value="<s:property value="idDivisionAcademica"/>" selected=""><s:property value="nombreDivision"/></option>
                                    </s:if>
                                    <s:else>
                                        <option value="<s:property value="idDivisionAcademica"/>"><s:property value="nombreDivision"/></option>
                                    </s:else>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Registrar" class="btn btn-block btn-outline-primary">
                        </div>
                    </form>
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
    </body>
</html>