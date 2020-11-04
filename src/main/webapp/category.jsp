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
                    <label>
                        <a href="ProductList_Food"><img src="img/category_food.png" width="200px" height="auto"/>
                            <p style="text-align: center; color: black">food</p></a>
                    </label>
                </div>
                <div class="col">
                    <label>
                        <a href="ProductList_Bath"><img src="img/category_food.png" width="200px" height="auto"/>
                            <p style="text-align: center; color: black">Bath Products</p></a>
                    </label>
                </div>
                <div class="col">
                    <label>
                    <a href="ProductList_Coupon"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Coupon</p></a>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <label>
                    <a href="ProductList_Good"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="text-align: center; color: black">General Goods</p></a>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                    <a href="ProductList_kitten"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Kittens</p></a>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                    <a href="ProductList_Vitamin"><img src="img/category_food.png" width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Vitamins & Supplements</p></a>
                    </label>
                </div>
            </div>
        </div>


    </body>
</html>
