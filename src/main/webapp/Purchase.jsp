<%-- 
    Document   : Purchase
    Created on : Nov 13, 2020, 9:52:57 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Order</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/HeaderMember.jsp"/>
        <!--<from method = "post" action = "purchase">-->
        
        <div class="row">
           
                <table class="table table-bordered" style="margin-left: 20%">
                    <tr>
                        <td>No</td>
                        <td>Product</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Total</td>
                        <td>Delete</td>
                    </tr>
                    <c:forEach items="${cart.items}" var="lineItem" varStatus="vs">
                        <tbody>
                            <tr>
                                <td>${vs.count}</td>
                                <td class="product-thumbnail"><img src="model-img/${lineItem.product.typeId.typeName}/${lineItem.product.productId}.jpg" width="200px" height="auto" alt="product img"/></td>
                                <td class="product-name">${lineItem.product.productName}</a></td>
                                <td class="product-price"><span class="amount">${lineItem.product.productPrice} BATH</span></td>
                                <td class="product-quantity">${lineItem.quantity}</td>
                                <td class="product-subtotal">${lineItem.totalPrice} BATH</td>
                                <td><a href="Remove?remove=${lineItem.product.productId}"> X </a></td>
                           
                                
                        </tbody>
                    </c:forEach>
                         
            
        </table>
    </div>
                                
            <div shipping>
    </body>
</html>
