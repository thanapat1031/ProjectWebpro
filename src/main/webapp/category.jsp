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

        <h1 style="text-align: center;" >Category</h1>

        <div class="container" style="margin-right: 8%">
            <div class="row">
                <div class="col">
                    
                    <a href="ProductList" ><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="margin-left:23%; color: black">food</p></a>
                </div>
                <div class="col">
                    <a href="C_bath.jsp"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="margin-left:15%; color: black">Bath Products</p></a>
                </div>
                <div class="col">
                    <a href="C_coupon.jsp"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="margin-left:21%; color: black">Coupon</p></a>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <a href="C_goods.jsp"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="margin-left:12%; color: black">General Goods</p></a>
                </div>
                <div class="col-4">
                    <a href="C_kittens.jsp"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="margin-left:22%; color: black">Kittens</p></a>
                </div>
                <div class="col-4">
                    <a href="C_vitamins.jsp"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="margin-left:5%; color: black">Vitamins & Supplements</p></a>
                </div>
            </div>
        </div>


    </body>
</html>
