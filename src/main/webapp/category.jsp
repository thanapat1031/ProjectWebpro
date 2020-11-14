<%-- 
    Document   : category
    Created on : Oct 22, 2020, 8:36:52 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="cssStyle.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
        <style>
            .monospace {
                font-family: Lucida Console, Courier, monospace;
            }

        </style>
    </head>

    <jsp:include page="/WEB-INF/HeaderPage.jsp" />
    <body style="background-color: #ffca00; overflow-x: hidden">
        <div class="monospace">
            <br>
            <h1 style="text-align: center; color: white; font-size: 500%; margin-top : 1%">Category</h1>


            <div class="container" style="margin-right : 0%; margin-top : 3%">
                <div class="row">
                    <div class="col">
                        <label style="text-align: center; margin-top : 1%">
                            <a href="ProductList?type=1"><img src="img/cat-food.png" width="100px" height="auto"/>
                                <p style="color: white">Food</p></a>
                        </label>
                    </div>
                    <div class="col">
                        <label style="text-align: center; margin-top : 1%">
                            <a href="ProductList?type=5"><img src="img/soap.png" width="100px" height="auto"/>
                                <p style="color: white">Cleaning</p></a>
                        </label>
                    </div>
                    <div class="col">
                        <label style="text-align: center; margin-top : 1%">
                            <a href="ProductList?type=6"><img src="img/coupons.png" width="100px" height="auto"/>
                                <p style="color: white">Coupon</p></a>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <label style="text-align: center; margin-top : 1%">
                            <a href="ProductList?type=3"><img src="img/ball.png"  width="100px" height="auto"/>
                                <p style="color: white">Accessories</p></a>
                        </label>
                    </div>
                    <div class="col-4">
                        <label style="text-align: center; margin-top : 1%">
                            <a href="ProductList?type=4"><img src="img/cage.png"  width="100px" height="auto"/>
                                <p style="color: white">Cages</p></a>
                        </label>
                    </div>
                    <div class="col-4">
                        <label style="text-align: center; margin-top : 1%">
                            <a href="ProductList?type=2"><img src="img/milk.png"  width="100px" height="auto"/>
                                <p style="color: white">Milk</p></a>
                        </label>
                    </div>
                </div>
            </div>
            <div class="row ml-3 mx-2 ">
                <c:forEach items="${products}" var="p" varStatus="vs">
                    <div class="col-3  rounded mx-2 my-3 card-text">
                        <label>
                            <a href="ViewProduct?productId=${p.productId}" target="_top" style="text-decoration: none; color: blz" >
                                <div class="img-thumbnail border-0">
                                    <img src="model-img/${p.typeId.typeName}/${p.productId}.jpg" height="100" width="auto" />
                                </div></a>

                            <b><div class="card-block">  
                                    ${p.productName}
                                    <p class="card-text" style="color : white;">${p.productPrice}  BAHT
                                        <a href="BuyProduct?productId=${p.productId}"><input type="submit" name="submit" value="buy now" class="button button4" style="margin-left: 10%"></a>  
                                </div></b>
                            <div style="font-size: 0.7em; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;width: 200px; color : white;">${p.productDescription}</div>
                        </label> 
                    </div>
                </c:forEach>
            </div>
        </div>

    </body>
</html>
