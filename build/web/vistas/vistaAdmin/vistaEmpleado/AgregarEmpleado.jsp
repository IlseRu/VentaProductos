<%-- 
    Document   : AgregarDivision
    Created on : 05/12/2018, 03:36:34 AM
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
        <title>Empleado</title>
    </head>
    <body  background="<%=context%>/img/fondo.jpg" style="  width: 100%; height: 100%;  background-size: cover;">
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
            <div class="container" >
                <div class="row">
                    <div class="col-lg"> 
                        <br>
                        <form class="form" method="post" action="registrarEmpleado" >
                            <div class="row justify-content-md ">                        
                                <div class="form-group col col-md-4">
                                    <label for="usuario">Usuario</label>
                                    <input type="text" class="form-control" id="usuario" name="bean.usuario" placeholder="Ej: empleado1"/>
                                </div>
                                <div class="form-group col col-md-4">
                                    <label for="password">Contraseña</label>
                                    <input type="text" class="form-control" id="password" name="bean.password" placeholder="Ej: contrasenaEmpleado1"/>
                                </div>
                                <div class="form-group col col-md-4">
                                    <label for="correo">Correo</label>
                                    <input type="text" class="form-control" id="correo" name="bean.correo" placeholder="Ej: empleado1@gmail.com"/>
                                </div>     
                            </div>
                            <div class="row justify-content-md">
                                <div class="form-group  col col-md-4">
                                    <label for="nombre">Nombre </label>
                                    <input type="text" class="form-control" id="nombre" name="bean.nombre" placeholder="Ej: Juan Fernando"/>
                                </div>
                                <div class="form-group col col-md-4">
                                    <label for="apellidos">Apellidos </label>
                                    <input type="text" class="form-control" id="apellidos" name="bean.apellidos" placeholder="Ej: Pérez López"/>
                                </div>                            
                                <div class="form-group col col-md-4">
                                    <label for="fechaNacimiento">Fecha de nacimiento</label>
                                    <input type="text" class="form-control" id="fechaNacimiento" name="bean.fechaNacimiento" placeholder=" DD/MM/AAAA"/>
                                </div>
                                <div class="form-group col col-md-4">
                                    <label for="domicilio">Domicilio </label>
                                    <input type="text" class="form-control" id="domicilio" name="bean.domicilio" placeholder="Ej: Calle de las Guirnaldas Col. Centro #1"/>
                                </div>     
                                <div class="form-group col col-md-4">
                                    <label for="telefono">Teléfono  </label>
                                    <input type="text" class="form-control" id="telefono" name="bean.telefono" placeholder="Ej: 7772664517"/>
                                </div>   
                                <div class="form-group col col-md-4">
                                    <label>Tipo de sangre</label>
                                    <select class="form-control" name="bean.tipoSangre" id="tipoSangre" >
                                        <option>Seleccione...</option>
                                        <option value="A+">A+</option>
                                        <option value="B+">B+</option>
                                        <option value="O+">O+</option>
                                        <option value="AB+">AB+</option>
                                        <option value="A-">A-</option>
                                        <option value="B-">B-</option>
                                        <option value="O-">O-</option>
                                        <option value="AB-">AB-</option>
                                    </select>
                                </div>                                                                
                            </div>
                            <div class="row justify-content-md">
                                <div class="form-group col col-md-4">
                                    <label>Sexo</label>
                                    <select name="bean.sexo" class="form-control" id="sexo" >
                                        <option>Seleccione...</option>
                                        <option value="Hombre">Hombre</option>
                                        <option value="Mujer">Mujer</option>
                                    </select>
                                </div>                                       
                                <div class="form-group col col-md-4">
                                    <label for="numeroTrabajador">Número de trabajador</label>
                                    <input type="text" class="form-control" id="numeroTrabajador" name="bean.numeroTrabajador" placeholder="Ej: 123456"/>
                                </div>
                                <div class="form-group col col-md-4">
                                    <label for="fechaContratacion">Fecha de contratación </label>
                                    <input type="text" class="form-control" id="fechaContratacion" name="bean.fechaContratacion" placeholder="Ej: 17/05/1999"/>
                                </div>                                       
                            </div>
                            <div class="row justify-content-md">
                                <div class="form-group col col-md-4">
                                    <label for="rfc">RFC </label>
                                    <input type="text" class="form-control" id="rfc" name="bean.rfc" placeholder="Ej: ABCD12345"/>
                                </div>  
                                <div class="form-group col col-md-4">
                                    <label for="salarioHora">Salario - Hora </label>
                                    <input type="text" class="form-control" id="salarioHora" name="bean.salarioHora" placeholder="Ej: 105"/>
                                </div>       
                            </div>                            
                            <div>
                                <input type="submit" class=" btn btn-block  btn-outline-primary " value="Registrar"/>
                            </div>                                  
                        </form>
                    </div>
                </div>                 
            </div>                
        </div>
    </body>
</html>