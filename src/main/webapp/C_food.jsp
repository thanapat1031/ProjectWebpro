<%-- 
    Document   : C_food
    Created on : Oct 28, 2020, 11:22:37 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="cssStyle.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

        
    </head>
    <body>

        <%--<jsp:include page="/WEB-INF/HeaderPage.jsp" />--%>
        <jsp:include page="/category.jsp"/>
        <div class="container" style="margin-right : 0%; margin-top : 3%">
            <div class="row container-fluid ">
                <div class="col-2">
                </div>
                <div class="col-4 ">
                </div>
                <div class="col-6 ">
                </div>

            </div>
            <div class="row container center">
                <c:forEach items="${product}" var="p">
                    <div class="col-3 center mx-2 my-3 img-thumbnail" style="text-align: center">
                        <label>
                           
                            <a href="ViewProduct?productId=${p.productId}" target="_top" style="text-decoration: none; color: black" >
                        <div class="img-thumbnail border-0 ">
                            <img src="model-img/${p.typeId.typeName}/${p.productId}.jpg" height="100" width="auto" />
                        </div></a>
                        <b><div class="card-block">
                                ${p.productName}
                                <p>
                            <p class="card-text" style="color : black;">${p.productPrice}  BAHT
                                <p>
                                <a href="BuyProduct?productId=${p.productId}"><input type="submit" name="submit" value="buy now" class="button button4" style="margin-left: 10%"></a>  
                            </div></b>
                           </label> 
                    </div>
                </c:forEach>

                   </div>
            </div>
    </body>
</html>
