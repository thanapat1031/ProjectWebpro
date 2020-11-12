<%-- 
    Document   : ViewCart
    Created on : Nov 9, 2020, 2:17:49 PM
    Author     : angelmungg
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

        <title>Category : cage</title>
        <style>.button1 {background-color: #4CAF50;} 
            .button2 {background-color: red;} </style>
    </head>
    <body>
        <jsp:include page="/WEB-INF/HeaderMember.jsp" />
    <from method = "post" action = "purchase">

        <c:forEach items="${cart.items}" var="lineItem" varStatus="vs">  
            <tbody>
                <tr>
                    <td class="product-thumbnail"><img src="model-img/${lineItem.product.typeId}/${lineItem.product.productId}.jpg" alt="product img"/></td>
                    <td class="product-name">${lineItem.product.productName}</td>
                    <td class="product-price"><span class="amount">${lineItem.price} BATH</span></td>
                    <td class="product-quantity"><input type="number" id="quantity" name="quantity" value ="${lineItem.quantity}"min="1" max="99"><button type="submit">add</button> </td>
                    <td class="product-subtotal">${lineItem.totalPrice} BATH</td>
                    <td class="product-remove"><a href="${lineItem.product.productId}">X</a></td>
                </tr>
            </tbody>
        </c:forEach>
        <button type="summit">confirm</button>
    </form>                                      
</body>
</html>
