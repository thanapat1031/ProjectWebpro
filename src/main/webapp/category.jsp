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
                        <a href="ProductList?Food_pd=1"><img src="img/cat-food.png" width="200px" height="auto"/>
                            <p style="text-align: center; color: black">food</p></a>
                    </label>
                </div>
                <div class="col">
                    <label>
                        <a href="ProductList?Bath_pd="bath"><img src="img/soap.png" width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Bath Products</p></a>
                    </label>
                </div>
                <div class="col">
                    <label>
                    <a href="ProductList?Coupon_pd='coupon'"><img src="img/coupons.png" width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Coupon</p></a>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <label>
                    <a href="ProductList?Good_pd='good'"><img src="img/ball.png"  width="200px" height="auto"/>
                        <p style="text-align: center; color: black">General Goods</p></a>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                    <a href="ProductList_kitten?Kitten_pd='kitten'"><img src="img/cage.png"  width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Kittens</p></a>
                    </label>
                </div>
                <div class="col-4">
                    <label>
                    <a href="ProductList_Vitamin?Vitamin_pd='vitamin'"><img src="img/milk.png"  width="200px" height="auto"/>
                        <p style="text-align: center; color: black">Vitamins & Supplements</p></a>
                    </label>
                </div>
            </div>
        </div>
        
         <c:forEach items="${products}" var="p" varStatus="vs">
                    <div class="col-2 border border-primary rounded mx-2 my-3">
                        <div class="img-thumbnail border-0">
<!--                            <img src="model-img/food/${p.productId}.jpg" height="100" width="148"/>-->
                            <!--<img src="model-img/food/1001.jpg" height="100" width="148"/>-->
                        </div>
                      
                        
<!--                        <div style="margin-top: -50">
                            <a href="AddItemToCart?productCode=${p.productCode}"><img src="img/cart-empty.jpg" height="25"/>
                        </div>-->

                        <div style="font-size: 0.7em; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;width: 200px;">${p.productName}</div>
                    </div>
                </c:forEach>


    </body>
</html>
