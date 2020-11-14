<%-- 
    Document   : C_food
    Created on : Oct 28, 2020, 11:22:37 PM
    Author     : User
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

        <title>Category : food</title>
        <style>table, th, td {

                padding: 70px;
            }
            table {
                border-spacing: 15px;
            }
            font-face {
                font-family: 'Designil Thai Font';
                unicode-range: U+0E00–U+0E7F;
            }</style>
    </head>
    <body   style="background-color: #ffca00">

        <jsp:include page="/WEB-INF/HeaderPage.jsp" />




        <div style="background-color:whitesmoke; width:100%">
            <!--                                <div class="img-thumbnail border-0"  ">-->
            <table>
                <tr>
                    <td ><div>    <img src="model-img/${product.typeId.typeName}/${product.productId}.jpg" height="300px" width="auto" />     
                            <td> <h1 class="font-face">${product.productName}</h1>

                                <br><h3 style="font-family: monospace">${product.productPrice}  BAHT  <a href="BuyProduct?productId=${product.productId}"><input type="submit" name="submit" value="buy now" class="button button6" style="margin-left: 10%"></a></h3>   
                                <br>${product.productDescription}
                        </div>
                </tr>
        </div>
    </table>
</div>

</body>
</html>
