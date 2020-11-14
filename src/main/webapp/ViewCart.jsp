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
        <style>
            .button1 {background-color: #4CAF50;} 
            .button2 {background-color: red;} 
            .centertd{
                text-align: center;
            }
        </style>
    </head>
    <body style="overflow-x: hidden">
        <jsp:include page="/WEB-INF/HeaderPage.jsp"/>
        <!--<from method = "post" action = "purchase">-->
        <div> 
            <div class="row">
                <table class="table table-bordered" style="width :99%; margin-left: 10px">
                    <tr>
                        <td class="centertd">No</td>
                        <td class="centertd">Product</td>
                        <td class="centertd">Name</td>
                        <td class="centertd">Price</td>
                        <td class="centertd">Quantity</td>
                        <td class="centertd">Total</td>
                        <td class="centertd">Delete</td>
                    </tr>
                    <c:forEach items="${cart.items}" var="lineItem" varStatus="vs">
                        <tbody>
                            <tr>
                                <td class="centertd">${vs.count}</td>
                                <td class="product-thumbnail centertd"><img src="model-img/${lineItem.product.typeId.typeName}/${lineItem.product.productId}.jpg" width="200px" height="auto" alt="product img"/></td>
                                <td class="product-name">${lineItem.product.productName}</a></td>
                                <td class="product-price"><span class="amount">${lineItem.product.productPrice} BATH</span></td>
                        <form action="ViewCart?productid=${lineItem.product.productId}" method="POST">
                            <td><input type="number" name="quantity" value="${lineItem.quantity}" min="0" max="99">
                                <button type="submit">update</button>
                            </td>
                        </form>

                        <td class="product-subtotal">${lineItem.totalPrice} BATH</td>
                        <td><a href="Remove?remove=${lineItem.product.productId}"> X </a></td>


                        </tbody>
                    </c:forEach>
                    </tr>
                    <tr><td colspan='5'>
                        <td> total : ${cart.totalPrice} BATH
                        <td><a href="Confirm";">Purchase</a></tr>
                    </form>
                </table>
            </div>
        </div>
    </body>
</html>
