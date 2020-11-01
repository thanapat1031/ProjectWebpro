<%-- 
    Document   : Registration
    Created on : Oct 23, 2020, 6:03:45 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <style>

            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            .container{text-align: center;
                       margin: 24px 0 12px 0;
                       position: relative;
                       width: auto;
                       padding: 16px;
            }
        </style>

    </head>
    <body>

        <form class="modal-content" action="Registration" method = "POST">
            <div class="container">
                <h1>Sign Up</h1>
                <hr>
                <p>Please fill in this form to create an account.</p>
                <hr>
                <label for ="name"></label>
                <input type="text" placeholder="customerId" name="cusId" required>
                <br>
                <label for ="name"></label>
                <input type="text" placeholder="Name-Surname" name="new_name" required>
                <br>
                <label for="email"><b>Username</b></label>
                <input type="text" placeholder="your username" name="new_username" required>
                <br>
                <label for="address"><b>Address</b></label>
                <input type="text" placeholder="your address" name="new_address" required>
                <br>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="new_password" required>
                <br>
                <label for="psw-repeat"><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="new_repassword" required>
                <br>
                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="new_email" required>
                <br>
                <label for="email"><b>Tel.</b></label>
                <input type="text" placeholder="Telephone number" name="new_tel" required>
                <br>



                <br>

                <button type="submit" value="signup">Sign Up</button> 

            </div>
        </form>
    </body>
</html>
