<%-- 
    Document   : AgregarCarrera
    Created on : 19/11/2018, 06:36:38 PM
    Author     : lfern
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
        <title>PROVEEDOR</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg">                 
                    <br>
                    <form method="post" action="agregarProveedor" class="form-group">
                        <div class="row justify-content-md">                        
                            <div class="form-group col col-md-4">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="bean.nombre" id="nombre">
                            </div>
                            <div class="form-group col col-md-4">
                                <label>Dirección</label>
                                <input type="text" id="direccion" class="form-control" name="bean.direccion"/>
                            </div>
                            <div class="form-group col col-md-4">
                                <label>Teléfono</label>
                                <input type="text" id="telefono" class="form-control" name="bean.telefono"/>
                            </div>
                        </div>
                        <div class="row justify-content-md">                        
                            <div class="form-group col col-md-4">
                                <label>Correo</label>
                                <input type="text" class="form-control" name="bean.correo" id="correo">
                            </div>
                            <div class="form-group col col-md-4">
                                <label>RFC</label>
                                <input type="text" id="rfc" class="form-control" name="bean.rfc"/>
                            </div>
                            <div class="form-group col col-md-4">
                                <label>Descripcion</label>
                                <input type="text" id="descripcion" class="form-control" name="bean.descripcion"/>
                            </div>
                            <div class="form-group ">
                                <input type="submit" value="Registrar" class="btn btn-block btn-outline-primary">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
