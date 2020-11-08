<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<style>
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

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="index.jsp">
            <img src="img/logo.png" width="60" height="auto"/>Meow Meow</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="category.jsp">Product<span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">How To Use?</a>
            </li>
        </ul>
        <div class="form-inline my-2 my-lg-0">
            <!--            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">-->
            <button onclick="myFunction()" class="btn btn-outline-success my-2 my-sm-0 ">${user.userName}</button>
        </div>
    </div>
</nav>
<div class="dropdown">
  
  <div id="myDropdown" class="dropdown-content" >
    <a href="#home">History</a>
    <a href="#about">Update order</a>
    <a href="Logout">Log out</a>
  </div>
</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
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