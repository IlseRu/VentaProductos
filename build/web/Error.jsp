<%-- 
    Document   : Error
    Created on : 19/11/2018, 04:44:33 PM
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg">

                    <div class="text-center">
                        <h1>Error!!</h1>
                        <a href="<%=context%>/Inicio.jsp" class="btn btn-danger">Inicio...</a>
                        <hr>
                        <img src="<%=context%>/img/p.jpg" class="img-fluid" height="500" width="500" >
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
