<%-- 
    Document   : modificarDivision
    Created on : 05/12/2018, 05:38:12 PM
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
        <div class="container">
            <div class="row">
                </div>
                <div class="col-lg">
                    <form class="form-group" method="post" action="modificarEmpleado">
                        <input type="hidden" name="bean.idEmpleado" value="<s:property value="bean.idEmpleado"/>"/>
                        <div class="row justify-content-md ">                           
                            <div class="form-group col col-md-4">
                                <label for="usuario">Usuario</label>
                                <input type="text" class="form-control" id="usuario" name="bean.usuario" value="<s:property value="bean.usuario"/>"/>
                            </div>
                            <div class="form-group col col-md-4">
                                <label for="password">Contraseña</label>
                                <input type="text" class="form-control" id="password" name="bean.password" value="<s:property value="bean.password"/>"/>
                            </div>
                            <div class="form-group col col-md-4">
                                <label for="correo">Correo</label>
                                <input type="text" class="form-control" id="correo" name="bean.correo" value="<s:property value="bean.correo"/>"/>
                            </div>        
                        </div>
                        <div class="row justify-content-md ">                               
                            <div class="form-group col col-md-4">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="bean.nombre" value="<s:property value="bean.nombre"/>"/>
                            </div>        
                            <div class="form-group col col-md-4">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" class="form-control" id="apellidos" name="bean.apellidos" value="<s:property value="bean.apellidos"/>"/>
                            </div>         
                            <div class="form-group col col-md-4">
                                <label for="fechaNacimiento">Fecha Nacimiento</label>
                                <input type="text" class="form-control" id="fechaNacimiento" name="bean.fechaNacimiento" value="<s:property value="bean.fechaNacimiento"/>"/>
                            </div>      
                            <div class="form-group col col-md-4">
                                <label for="domicilio">Domicilio</label>
                                <input type="text" class="form-control" id="domicilio" name="bean.domicilio" value="<s:property value="bean.domicilio"/>"/>
                            </div>       
                            <div class="form-group col col-md-4">
                                <label for="telefono">Teléfono</label>
                                <input type="text" class="form-control" id="telefono" name="bean.telefono" value="<s:property value="bean.telefono"/>"/>
                            </div>    
                            <div class="form-group col col-md-4">
                                <label>Tipo de Sangre</label>
                                <select class="form-control" name="bean.tipoSangre">
                                    <option value="<s:property value="bean.tipoSangre"/>" selected=""><s:property value="bean.tipoSangre"/></option>
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
                                <select name="bean.sexo" class="form-control">
                                    <s:if test="{#bean.genero == 'Hombre'}">
                                        <option value="<s:property value="bean.sexo"/>" selected=""><s:property value="bean.sexo"/></option>
                                        <option value="Mujer">Mujer</option>
                                    </s:if>
                                    <s:else>
                                        <option value="Hombre">Hombre</option>
                                        <option value="<s:property value="bean.sexo"/>" selected=""><s:property value="bean.sexo"/></option>
                                    </s:else>
                                </select>
                            </div>
                            <div class="form-group col col-md-4">
                                <label for="numeroTrabajador">Número de trabajador</label>
                                <input type="text" class="form-control" id="numeroTrabajador" name="bean.numeroTrabajador" value="<s:property value="bean.numeroTrabajador"/>"/>
                            </div>    
                            <div class="form-group col col-md-4">
                                <label for="fechaContratacion">Fecha de contratacion</label>
                                <input type="text" class="form-control" id="fechaContratacion" name="bean.fechaContratacion" value="<s:property value="bean.fechaContratacion"/>"/>
                            </div>           
                            <div class="form-group col col-md-4">
                                <label for="rfc">RFC</label>
                                <input type="text" class="form-control" id="rfc" name="bean.rfc" value="<s:property value="bean.rfc"/>"/>
                            </div>            
                            <div class="form-group col col-md-4">
                                <label for="salarioHora">Salario - Hora</label>
                                <input type="text" class="form-control" id="salarioHora" name="bean.salarioHora" value="<s:property value="bean.salarioHora"/>"/>
                            </div>                                        
                        </div>
                        <div>
                            <input type="submit" class=" btn btn-block btn-outline-primary" value="Modificar"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
