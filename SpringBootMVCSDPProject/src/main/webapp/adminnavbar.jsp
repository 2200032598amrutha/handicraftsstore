<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Admin Panel</title>
<style>
  body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
  }

  .navbar-vertical {
    position: fixed;
    height: 100%;
    width: 250px;
    background-color: #343a40;
    padding-top: 20px;
  }

  .navbar-vertical a {
    display: block;
    color: white;
    text-decoration: none;
    padding: 12px 20px;
    font-size: 16px;
    font-weight: bold;
  }

  .navbar-vertical a:hover {
    background-color: #495057;
    color: #17a2b8;
    transition: all 0.3s ease;
  }

  .navbar-vertical .active {
    background-color: #007bff;
    color: white;
  }

  .main-content {
    margin-left: 260px;
    padding: 20px;
  }

  h2 {
    color: #343a40;
    text-shadow: 1px 1px 2px #ddd;
    font-size: 28px;
    margin-bottom: 20px;
  }

  .btn-custom {
    background-color: #007bff;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border: none;
    margin: 10px;
    padding: 10px 20px;
    text-transform: uppercase;
    border-radius: 5px;
  }

  .btn-custom:hover {
    background-color: #0056b3;
    color: white;
    transition: all 0.3s ease;
  }

  footer {
    background-color: #343a40;
    color: white;
    padding: 10px;
    text-align: center;
    position: relative;
    bottom: 50;
    width: 100%;
  }
</style>
</head>
<body>

<!-- Vertical Navbar -->
<div class="navbar-vertical">
  <a href="adminhome" class="active"><span class="glyphicon glyphicon-home"></span> Home</a>
  <a href="viewallcustomers"><span class="glyphicon glyphicon-list-alt"></span> View All Customers</a>
  <a href="deletecustomers"><span class="glyphicon glyphicon-trash"></span> Delete Customer</a>
  <a href="viewcustomerbyid"><span class="glyphicon glyphicon-search"></span> View Customer By ID</a>
  <a href="adminlogin"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
  <h2>Spring Boot Demo SDP Project</h2>
  <p style="color: #6c757d; font-size: 18px;">
    Welcome to the admin panel. Manage customer data effectively using the options in the navigation bar.
  </p>
</div>

<!-- JavaScript to handle session timeout -->
<script>
  let inactivityTime = 0;

  // Function to handle session timeout
  function startTimer() {
    setInterval(function() {
      inactivityTime += 1;
      if (inactivityTime >= 1) {
        alert("Session expired due to inactivity.");
        window.location.href = "adminlogin"; // Redirect to login page
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
