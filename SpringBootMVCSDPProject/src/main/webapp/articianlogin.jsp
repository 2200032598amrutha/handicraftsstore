<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Artisan Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-image: url('https://tse3.mm.bing.net/th?id=OIP.BbMTYsmlD8JIVAvw_v47AgHaDv&pid=Api&P=0&h=180');
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
      margin: 0;
      padding: 0;
      color: #fff;
    }

    .container {
      max-width: 400px;
      margin: 100px auto;
      background: rgba(255, 255, 255, 0.8); /* Light, transparent white background */
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
      border: none;
      color: #333; /* Darker text color for readability */
    }

    h3 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 1.5rem;
      text-transform: uppercase;
      letter-spacing: 1.5px;
      color: #000; /* Dark heading */
    }

    label {
      font-weight: bold;
      display: block;
      margin-bottom: 8px;
      font-size: 0.9rem;
      color: #000; /* Dark label text */
    }

    .form-control {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background: #fff; /* White input background */
      color: #333; /* Dark input text */
      font-size: 1rem;
    }

    .form-control::placeholder {
      color: #aaa; /* Subtle placeholder text */
    }

    .btn {
      width: 48%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      font-size: 0.9rem;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .btn-success {
      background-color: #28a745;
      color: #fff;
    }

    .btn-success:hover {
      background-color: #218838;
      transform: scale(1.05);
    }

    .btn-container {
      display: flex;
      justify-content: space-between;
    }

    .btn-link {
      text-align: center;
      display: block;
      margin-top: 10px;
      color: #28a745;
    }
  </style>
</head>
<body>

  <!-- Navbar inclusion (adjust according to your project) -->
  <%@ include file="mainnavbar.jsp" %>

  <!-- Success message -->
  <h4 align="center" style="color:red">
    <c:out value="${message}" /><br/>
  </h4>

  <h3 align="center">Artisan Login Form</h3>
  <div class="container">
    <form method="post" action="articiannavbar.jsp">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" class="form-control" required />

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" class="form-control" required />

      <div class="btn-container">
        <input type="submit" value="Login" class="btn btn-success" />
        <input type="reset" value="Clear" class="btn btn-success" />
      </div>
    </form>
   
  </div>

</body>
</html>
