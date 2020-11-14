<%-- 
    Document   : Thankyou
    Created on : Nov 14, 2020, 4:09:45 AM
    Author     : angelmungg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Successfully</title>
        <style>
            .center {text-align : center;
                     margin-top : 15%;
                     }
             .bg {
    background-color: #969696;
   
             }
        </style>
    </head>
    <body class='bg'>
        <jsp:include page="/WEB-INF/HeaderPage.jsp"/>
        <div class="center">
        <h1>Thank you for shopping</h1>
        <br>
        <button onclick="window.location.href='index.jsp'">Back to  website</button>
        </div>
    </body>
</html>
