<%-- 
    Document   : category
    Created on : Oct 22, 2020, 8:36:52 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="cssStyle.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>

    </head>
    <body class="bg">
        <jsp:include page="/WEB-INF/HeaderPage.jsp" />

        <h1 style="text-align: center;" >หมวดหมู่</h1>

        <div class="container" style="margin-right: 8%">
            <div class="row">
                <div class="col">
                    <a href=""><img src="img/category_food.png" width="200px" height="auto"/>
                    <p style="margin-left:18%; color: black">อาหารสัตว์</p></a>
                </div>
                <div class="col">
                    <img src="img/category_food.png" width="200px" height="auto"/>
                </div>
                <div class="col">
                    <img src="img/category_food.png" width="200px" height="auto"/>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <img src="img/category_food.png" width="200px" height="auto"/>
                </div>
                <div class="col-4">
                    <img src="img/category_food.png" width="200px" height="auto"/>
                </div>
                <div class="col-4">
                    <img src="img/category_food.png" width="200px" height="auto"/>
                </div>
            </div>
        </div>


    </body>
</html>
