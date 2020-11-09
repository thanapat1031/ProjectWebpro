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

        <jsp:include page="/WEB-INF/HeaderPage.jsp" />

        <div class="row">
            <table class="table table-bordered">
                <tr>
                    <td>No</td>
                    <td>Description</td>

                    <td>Price</td>
                    <td>Total</td>
                    <td>Delete or addddd</td>
                </tr>
                <c:forEach items="${cart.items}" var="lineItem" varStatus="vs">
                    <tr>
                        <td>${vs.count}</td>


                        >
                        <td>${lineItem.price}</td>
                        <td>${lineItem.totalPrice}</td>
                        <td><input type="checkbox" name="del_${lineItem.product.productCode}"/>
                            
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="2"></td>
                    <td></td>
                    

                    <td><fmt:formatNumber pattern="#,###.00" value="${cart.totalPrice}"/></td>
        <td><button class="button button2">delete</button>
        <button class="button button1">add</button></td>
                </tr>
            </table>
        </div>
  
             
    </body>
</html>
