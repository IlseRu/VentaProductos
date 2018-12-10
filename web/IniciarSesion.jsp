<%-- 
    Document   : IniciarSesion
    Created on : 05/12/2018, 10:27:27 PM
    Author     : Hp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%=context%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=context%>/css/bootstrap.css" rel="stylesheet">
        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="<%=context%>/js/bootstrap.bundle.js"></script>
        <title>LOGIN</title>
    </head>
    <body  background="img/inicioo.jpg" style="  width: 100%; height: 100%;  background-size: cover;"><br><br>
        <div class="container">        
            <div class="row justify-content-md-center">
                <div class="col col-md-3">               
                    <img id="profile-img" class="img-thumbnail" src="<%=context%>/img/morros.png" />
                    <p class="profile-name-card"><s:property value="mensaje" /></p>
                    <form class="form-signin" action="<%=context%>/iniciarSesion" method="get">
                        <span id="reauth-email" class="reauth-email"></span>
                        <input type="text" name="bean.usuario" id="user" class="form-control" placeholder="Usuario" required autofocus> <br>
                        <input type="password" name="bean.password" id="pass" class="form-control" placeholder="Contraseña" required>
                        </br>
                        <button class="btn btn-md btn-primary  btn-signin" type="submit">Iniciar sesión</button> <br><br>                   
                    </form>
                </div>
                <div class="col col-md-3">
                    <h5>                      </h5>
                </div>
                <div class="col col-lg-3">
                    <br><br><br>                    
                    <h3>¿Olvidaste tu contraseña?</h3> <br>
                    <h6>Ingresa tu correo electrónico para mandarte tu contraseña. </h6> <br>
                    <form action="<%=context%>/recuperacionContrasenia">
                        <input type="text" name="correoRecuperacion" />
                        <input type="submit" value="Enviar" />
                    </form>             
                </div>                            
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
