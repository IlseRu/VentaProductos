<%-- 
    Document   : AgregarDivision
    Created on : 05/12/2018, 03:36:34 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String context = request.getContextPath();%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html  >
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
        <title>EMPLEADOS</title>
    <body background="<%=context%>/img/fondo.jpg" style="  width: 100%; height: 100%;  background-size: cover;">
        <div class="container-fluid">
            <nav class="bg-dark navbar-dark navbar-expand-lg navbar">
                <img src="<%=context%>/img/CA.png" width="120" height="100" class="d-inline-block align-top" alt="">   
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
                            <a href="#" class="dropdown-item">Registrar producto</a>
                            <a href="#" class="dropdown-item">Consultar producto</a>                            
                        </div>
                    </li>
                </ul>    
                <ul class="navbar-nav">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Gestión de proveedores
                        </a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Registrar proveedor</a>
                            <a href="#" class="dropdown-item">Consultar proveedor</a>                            
                        </div>
                    </li>
                </ul>               
                <ul class="navbar-nav">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" id="navbardropdown">
                            Gestión de anaqueles
                        </a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Registrar anaquel</a>
                            <a href="#" class="dropdown-item">Consultar anaquel</a>                            
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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <br/>
                        <table class="table table-sm table-hover  striped table-primary">
                            <thead class="thead-dark thead-light">
                                <tr>
                                    <td >#</td>
                                    <td >Usuario</td>
                                    <td >Contraseña</td>
                                    <td>Correo</td>
                                    <td >No. Trabajador</td>
                                    <td >Nombre</td>
                                    <td>Apellidos</td>
                                    <td>Fecha Nacimiento</td>
                                    <td>Domicilio</td>
                                    <td>Teléfono</td>
                                    <td>Tipo de sangre</td>
                                    <td>Sexo</td>
                                    <td>Fecha Inicio</td>
                                    <td>RFC</td>
                                    <td>Salario</td>
                                    <td>Acciones</td>
                                </tr>
                            </thead>
                            <tbody>
                                <s:iterator value="lista" var="lista" status="stat">
                                    <tr>
                                        <td><s:property value="#stat.count"/></td>
                                        <td><s:property value="usuario"/></td>
                                        <td><s:property value="password"/></td>
                                        <td><s:property value="correo"/></td>
                                        <td><s:property value="numeroTrabajador"/></td>
                                        <td><s:property value="nombre"/></td>
                                        <td><s:property value="apellidos"/></td>
                                        <td><s:property value="fechaNacimiento"/></td>
                                        <td><s:property value="domicilio"/></td>
                                        <td><s:property value="telefono"/></td>
                                        <td><s:property value="tipoSangre"/></td>
                                        <td><s:property value="sexo"/></td>
                                        <td><s:property value="fechaContratacion"/></td>
                                        <td><s:property value="rfc"/></td>
                                        <td><s:property value="salarioHora"/></td>                                        
                                        <td>
                                            <form method="post" action="consultarEmpleadoId">
                                                <input type="hidden" name="bean.idEmpleado" value="<s:property value="idEmpleado"/>"/>
                                                <input type="submit" value="Modificar" class="btn btn-primary"/>
                                            </form> <br>
                                            <form method="post" action="eliminarEmpleado">
                                                <input type="hidden" name="bean.idEmpleado" value="<s:property value="idEmpleado"/>"/>
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
            </div>
    </body>
</html>
