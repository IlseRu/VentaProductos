<%-- 
    Document   : carrera
    Created on : 19/11/2018, 06:36:28 PM
    Author     : Hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String context = request.getContextPath();%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html  background="/img/fondo.jpg" style="  width: 100%; height: 100%;  background-size: cover;">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <link href="<%=context%>/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="<%=context%>/css/bootstrap.css" rel="stylesheet"/>
        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.js"></script>            
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js" integrity="sha384-u/bQvRA/1bobcXlcEYpsEdFVK/vJs3+T+nXLsBYJthmdBuavHvAW6UsmqO2Gd/F9" crossorigin="anonymous"></script>
        <title>PROVEEDOR</title>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <br/>
                    <table class="table table-sm table-hover  striped table-primary">
                        <thead class="thead-dark thead-light">
                            <tr>
                                <td>#</td>
                                <td>Nombre</td>
                                <td>Dirección</td>
                                <td>Teléfono</td>
                                <td>Correo</td>
                                <td>RFC</td>
                                <td>Descripción</td>
                            </tr>
                        </thead>
                        <tbody>
                            <s:iterator value="lista" status="stat" var="lista">
                                <tr>
                                    <td><s:property value="#stat.count"/></td>
                                    <td><s:property value="nombre"/></td>
                                    <td><s:property value="direccion"/></td>
                                    <td><s:property value="telefono"/></td>
                                    <td><s:property value="correo"/></td>
                                    <td><s:property value="rfc"/></td>
                                    <td><s:property value="descripcion"/></td>
                                    <td> <br>
                                        <form method="post" action="consultarProveedorId">
                                            <input type="hidden" name="bean.idProveedor" value="<s:property value="idProveedor"/>"/>
                                            <input type="submit" value="Modificar" class="btn btn-primary"/>
                                        </form> <br>
                                        <form method="post" action="eliminarProveedor">
                                            <input type="hidden" name="bean.idProveedor" value="<s:property value="idProveedor"/>"/>
                                            <input type="submit" value="Eliminar" class="btn btn-danger"/>
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
