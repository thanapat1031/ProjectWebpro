<%-- 
    Document   : C_vitamins
    Created on : Oct 28, 2020, 11:23:59 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category : vitamin</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row rounded border badge-warning p-4 pt-2 pb-2">
                <div class="col-2">
                </div>
                <div class="col-4 ">
                </div>
                <div class="col-6 ">
                </div>
            </div>
            <div class="row ml-3">
                <c:forEach items="${product}" var="p">
                    <div class="col-2 border border-primary rounded mx-2 my-3">
                        <div class="img-thumbnail border-0">
                            <img src="model-img/food/${p.productId}.jpeg" height="100" width="148"/>
                        </div>
                        <!--                        <div style="margin-top: -50">
                                                    <a href="AddItemToCart?productCode="><img src="img/cart-empty.jpg" height="25"/>
                                                </div>-->

                        <div style="font-size: 0.7em; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;width: 200px;">${p.productName}</div>
                    </div>


                    <!--<img src="model-img/food/.jpeg" width="200" height="auto"/>-->
                </c:forEach>


            </div>
    </body>
</html>
