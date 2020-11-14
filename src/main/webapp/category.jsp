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
       <style>.monospace {
  font-family: "Lucida Console", Courier, monospace;
}

</style>
    </head>

    <body style="background-color: #ffca00">
        <jsp:include page="/WEB-INF/HeaderPage.jsp" />
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

        <c:forEach items="${products}" var="p" varStatus="vs">
            <div class="col-2 border border-primary rounded mx-2 my-3">
                <div class="img-thumbnail border-0">
                    <img src="model-img/${p.typeId.typeName}/${p.productId}.jpg" height="100" width="148"/>

                </div>
                <div style="font-size: 0.7em; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;width: 200px;">${p.productName}</div>
            </div>
        </c:forEach>
        </div>

    </body>
</html>
