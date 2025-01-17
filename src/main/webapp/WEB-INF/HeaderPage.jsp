
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<style>
    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 4px 8px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        transition-duration: 0.4s;
        cursor: pointer;
    }
    .button4 {
        background-color: white;
        color: black;
        border: 2px solid #e7e7e7;
    }

    .button4:hover {background-color: #e7e7e7;}

    body {
        font-family: "Lucida Console", Courier, monospace;
    }
    /* Full-width input fields */

    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    /* Set a style for all buttons */



    button:hover {
        opacity: 0.8;
    }
    /* Extra styles for the cancel button */

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }
    /* Center the image and position the close button */

    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
        position: relative;
        width : auto;
    }

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    .container {
        width: auto;
        padding: 16px;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }
    /* The Modal (background) */

    .modal {
        display: none;
        /* Hidden by default */
        position: fixed;
        /* Stay in place */
        z-index: 1;
        /* Sit on top */
        left: 0;
        top: 0;
        width: 100%;
        /* Full width */
        height: 100%;
        /* Full height */
        overflow: auto;
        /* Enable scroll if needed */
        background-color: rgb(0, 0, 0);
        /* Fallback color */
        background-color: rgba(0, 0, 0, 0.4);
        /* Black w/ opacity */
        padding-top: 60px;
    }
    /* Modal Content/Box */

    .modal-content {
        background-color: #fefefe;
        margin: 5% auto 15% auto;
        /* 5% from the top, 15% from the bottom and centered */
        border: 1px solid #888;
        width: 30%;
        /* Could be more or less, depending on screen size */
    }
    /* The Close Button (x) */

    .close {
        position: absolute;
        right: 25px;
        top: 0;
        color: #000;
        font-size: 35px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: red;
        cursor: pointer;
    }
    /* Add Zoom Animation */

    .animate {
        -webkit-animation: animatezoom 0.6s;
        animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
        from {
            -webkit-transform: scale(0)
        }
        to {
            -webkit-transform: scale(1)
        }
    }

    @keyframes animatezoom {
        from {
            transform: scale(0)
        }
        to {
            transform: scale(1)
        }
    }
    /* Change styles for span and cancel button on extra small screens */

    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;

        }
        .cancelbtn {
            width: 100%;
        }
    }
    .dropbtn {


        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;

    }



    .dropdown {
        position: relative;
        display: inline-block;
        float :  right;
        margin-right : 165px;

    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        overflow: auto;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;


    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;


    }

    .dropdown a:hover {background-color: #ddd;}

    .show {display: block;}

</style>


<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #ffca00" >
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand logo" href="index.jsp">
            <img src="img/logo.png" width="60" height="auto"/>Meow Meow</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item ">
                <a class="nav-link" href="category.jsp">Product<span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="howToUse.jsp">How To Use?</a>
            </li>

        </ul>
        <div style="margin-right: 20px">

            <a href="ViewCart"><img src="img/shopping-basket.png"height="35 "/></a>(${cart.itemCount})
        </div>  
        <div class="form-inline my-2 my-lg-0">

            <form action="ProductListSearch" method="POST">
                <input class="form-control mr-sm-2" type="search" name ="searchParam"value="${param.searchParam}"placeholder="Search" aria-label="Search"  minlength="3" required/>
                <input type="submit" name="submit" value="Search" class="button button4">
            </form>
            <div style="margin-right: 6px; margin-left: 6px">
                <button class="btn btn-outline-success my-2 my-sm-0" onclick="document.getElementById(${user==null? "'id01'" : "'id02'"}).style.display = 'block'" style="width:auto;"> ${user==null?'Login':user.userName}</button>
            </div>
        </div>

    </div>
</nav>

</nav>
<div  class="dropdown" >
    <div id="id02"  class="dropdown-content" >
        <a href="Logout">Log out</a>
    </div>
</div>
<div id="id01" class="modal">
    <form class="modal-content animate" action="Login" method="post">
        <div class="container">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username">
            <label for="psw"><b>Password</b></label>

            <input type="password" placeholder="Enter Password" name="password">
            <button type="submit" onclick="loginFail()">Login</button>                 
            <label><input type="checkbox" checked="checked" name="remember">Remember me </label>
            <hr>
            <br><a href="Registration.jsp"><button type="button">Sign Up</button></a>          
            <br><button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
            <img src="img/logo.png" width="200px" height="auto" style="margin-left: 10%"/>
        </div>
    </form>
</div>
<div id="id02"  class="dropdown">

    <div id="myDropdown" class="dropdown-content" >
       
        
        <a href="Logout">Log out</a>
    </div>
</div>
</div>

<script>
    // Get the modal
    var modal = document.getElementById('id01');
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    function loginFail() {
        var modal_1 = document.getElementById('id01');
        window.onclick = function (logfail) {
            if (logfail.target == model) {
                modal.window.alert("Invalid User id or password");
            }
        }
    }
    function myFunction() {
        document.getElementById("id02").classList.toggle("show");
    }

// Close the dropdown if the user clicks outside of it
    window.onclick = function (event) {
        if (!event.target.matches('.btn-outline-success')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }
</script>