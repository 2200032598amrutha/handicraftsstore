<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>JFSD</title>
<style>
 body {
  background-color: #e6e6fa;  /* Soft Lavender background color */
  font-family: Arial, sans-serif;
}

  .navbar {
    background-color: #343a40;
    border-radius: 0;
    border: none;
    margin-bottom: 20px;
  }

  .navbar-brand, .navbar-nav li a {
    color: white !important;
    font-size: 18px;
    font-weight: bold;
  }

  .navbar-nav li a:hover {
    background-color: #495057 !important;
    color: #17a2b8 !important;
    transition: all 0.3s ease;
  }

  .navbar-nav .active a {
    background-color: #007bff !important;
    color: white !important;
  }

  h2 {
    text-align: center;
    color: #343a40;
    text-shadow: 1px 1px 2px #ddd;
    margin-bottom: 20px;
  }

  .navbar-nav .cart-wishlist-icons {
    margin-right: 15px;
  }

  .navbar-nav .cart-wishlist-icons a {
    color: white !important;
    font-size: 18px;
    padding: 10px;
  }

  .navbar-nav .cart-wishlist-icons a:hover {
    background-color: #495057 !important;
    color: #17a2b8 !important;
  }
</style>
</head>
<body>
<!-- Header -->
<!-- Navigation Bar -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="customerhome">Home</a></li>
      <li><a href="customerprofile">Customer Profile</a></li>
      <li><a href="updateprofile">Update Profile</a></li>
      <li><a href="productsview.jsp">Products</a></li>
    </ul>
    
    <!-- Cart and Wishlist Icons -->
    <ul class="nav navbar-nav navbar-right cart-wishlist-icons">
      <li>
        <a href="cart.jsp">
          <span class="glyphicon glyphicon-shopping-cart"></span> Cart
        </a>
      </li>
      <li>
        <a href="mywishlist.jsp">
          <span class="glyphicon glyphicon-heart"></span> Wishlist
        </a>
      </li>
      <li><a href="customerlogin"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<!-- JavaScript to handle session timeout -->
<script>
  let inactivityTime = 0;

  // Function to handle session timeout
  function startTimer() {
    setInterval(function() {
      inactivityTime += 1;
      if (inactivityTime >= 5) {
        alert("Session expired due to inactivity.");
        window.location.href = "customerlogin"; // Redirect to login page
      }
    }, 60000); // Increment every minute (60000 ms)
  }

  // Reset inactivity timer on any user activity
  document.onmousemove = document.onkeypress = function() {
    inactivityTime = 0;
  }

  // Start the timer when the page loads
  window.onload = startTimer;
</script>

</body>
</html>
