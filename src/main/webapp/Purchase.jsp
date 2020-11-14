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
        <jsp:include page="/WEB-INF/HeaderPage.jsp"/>
        <!--<from method = "post" action = "purchase">-->
        
            <form acion="Confirm" method="Post">
                                    <br> 
                                    <p style = "margin-right : 3%"> Please fill your address </p>
                                    <input type="checkbox" id="myaddress" name="myaddress" value="myaddress">your address
                                    <br><input type="checkbox" id="newaddress" name="newaddress" value="newaddress">other(fill your address)
                                    <br><input type="text" id="newad" name="newad"><br><br>
                                    <br>
                                    <br> 
                                    <p> Purchase with : </p>
                                    <input type="checkbox" id="e-bill" name="e-bill" value="e-bill">E-bill
                                    <br><input type="checkbox" id="cash" name="cash" value="cash">Cash
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    <button><a href="Confirm";">CONFIRM</a></button>
                                </form>
    </body>
</html>
