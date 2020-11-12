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
        <title>Sign Up</title>
        <link href="loginAndRegis.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div id="first">
                        <div class="myform form">
                            <div class="logo mb-3">
                                <div class="col-md-12 text-center">
                                    <h1>Sign Up</h1>
                                </div>
                            </div>
                            <form class="modal-content" action="Registration" method="POST">
                                <div class="form-group">
                                    <label for="name">Name-Surname</label>
                                    <input type="text" class="form-control" placeholder="Name-Surname" name="new_name" required>
                                </div>
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" placeholder="your username" name="new_username" required>
                                </div>
                                <div class="form-group">
                                    <label for="psw">Password</label>
                                    <input type="password" class="form-control" placeholder="Enter Password" name="new_password" required>
                                </div>
                                <div class="form-group">
                                    <label for="psw-repeat">Repeat Password</label>
                                    <input type="password" class="form-control" placeholder="Repeat Password" name="new_repassword" required>
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input type="text" class="form-control" placeholder="your address" name="new_address" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" placeholder="Enter Email" name="new_email" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Tel.</label>
                                    <input type="text" class="form-control" placeholder="Telephone number" name="new_tel" required>
                                </div>
                                <button type="submit" value="signup" class=" btn btn-block mybtn btn-primary tx-tfm">Sign Up</button> 
                                <!--                                <div class="col-md-12 text-center ">
                                                                    <p class="text-center">Don't have account? <a href="#" id="signup">Sign up here</a></p>
                                                                </div>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
