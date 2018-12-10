<%-- 
    Document   : AgregarPeriodo
    Created on : 20/11/2018, 10:11:26 PM
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
                    <form class="form-group" method="post" action="agregarPeriodo">
                        <div class="form-group">
                            <label>Periodo:</label>
                            <input type="text" name="bean.nombrePeriodo" class="form-control" placeholder="Enero - Abril 2019">
                        </div>
                        <div class="form-group">
                            <label>Fecha inicio:</label>
                            <input type="text"  placeholder="DD/MM/AAAA" name="bean.fechaInicio" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label>Fecha fin:</label>
                            <input type="text" placeholder="DD/MM/AAAA" name="bean.fechaFin" class="form-control">
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
