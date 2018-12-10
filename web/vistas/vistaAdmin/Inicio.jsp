<%-- 
    Document   : Index
    Created on : 06/12/2018, 03:11:09 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String context = request.getContextPath();%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
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
        <title> INICIO ADMINISTRADOR </title>     
    </head>
    <body background="img/fondo.jpg" style="  width: 100%; height: 100%;  background-size: cover;" >
        <div class="container-fluid">
            <nav class="bg-dark navbar-dark navbar-expand-lg navbar">
                <img src="img/CA.png" width="120" height="100" class="d-inline-block align-top" alt="">   
                <ul class="navbar-nav">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Gestión de empleados
                        </a>
                        <div class="dropdown-menu">
                            <a href="<%=context%>/vistas/vistaAdmin/vistaEmpleado/AgregarEmpleado.jsp" class="dropdown-item">Registrar empleado</a>
                            <a href="<%=context%>/consultarEmpleado" class="dropdown-item">Consultar empleado</a>                            
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Gestión de productos
                        </a>
                        <div class="dropdown-menu">
                            <a href="<%=context%>/registroProducto" class="dropdown-item">Registrar producto</a>
                            <a href="<%=context%>/consultarProducto" class="dropdown-item">Consultar producto</a>                                                        
                        </div>
                    </li>
                </ul>    
                <ul class="navbar-nav">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Gestión de proveedores
                        </a>
                        <div class="dropdown-menu">
                            <a href="<%=context%>/vistas/vistaAdmin/vistaProveedor/AgregarProveedor.jsp" class="dropdown-item">Registrar proveedor</a>
                            <a href="<%=context%>/consultarProveedor" class="dropdown-item">Consultar proveedor</a>                            
                        </div>
                    </li>
                </ul>               
                <ul class="navbar-nav">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Gestión de anaqueles
                        </a>
                        <div class="dropdown-menu">
                            <a href="<%=context%>/vistas/vistaAdmin/vistaAnaquel/AgregarAnaquel.jsp" class="dropdown-item">Registrar anaquel</a>
                            <a href="<%=context%>/consultarAnaquel" class="dropdown-item">Consultar anaquel</a>                            
                        </div>
                    </li>
                </ul>  
                <ul class="navbar-nav">
                        <a href="#" class="toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Pagar a empleados
                        </a>
                </ul>          
                <div class="col-lg-1"> </div>
                <ul class="navbar-nav">
                        <a href="<%=context%>/cerrarSesion" class="btn btn-danger">Cerrar sesión</a>
                </ul>                          
            </nav>
        </div>
    </body>
</html>        
</body>
</html>
