<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>My Wishlist</title>
  <style>
    .product-card {
      margin-bottom: 20px;
      display: flex;
      flex-direction: column; /* Stack content vertically */
      justify-content: space-between; /* Distribute space evenly */
      height: 100%;
    }

    .product-card img {
      height: 200px;
      width: 100%;
      object-fit: cover;
      border-radius: 5px;
    }

    .card-body {
      text-align: center;
      flex-grow: 1; /* Allow this section to stretch */
    }

    .product-title {
      font-size: 18px;
      font-weight: bold;
      margin-top: 10px;
    }

    .product-price {
      color: #28a745;
      font-size: 20px;
      font-weight: bold;
      margin-top: 10px;
    }

    .buy-now-btn {
      margin-top: 15px;
      width: 100%;
      padding: 10px;
    }

    .row {
      display: flex;
      flex-wrap: wrap; /* Ensure cards wrap to the next row if needed */
    }

    .col-sm-3 {
      display: flex;
      justify-content: center; /* Center the product cards */
      padding: 5px; /* Reduce padding */
    }

    .container {
      margin-top: 30px;
    }

    /* Make the cards responsive */
    @media (max-width: 768px) {
      .col-sm-3 {
        flex: 0 0 50%; /* Two products per row on smaller screens */
      }
    }

    @media (max-width: 480px) {
      .col-sm-3 {
        flex: 0 0 100%; /* One product per row on very small screens */
      }
    }
  </style>

  <script>
    // JavaScript function to redirect to checkout.jsp
    function redirectToCheckout() {
      window.location.href = "checkout.jsp"; // Simple redirect without parameters
    }
  </script>
</head>
<body>
<h2 align="center">My Wishlist</h2>

<div class="container">
  <div class="row">
    <!-- Product 1 -->
    <div class="col-sm-3">
      <div class="panel panel-default product-card">
        <div class="panel-body">
          <img src="https://tse4.mm.bing.net/th?id=OIP.9XWRpiefrA4jId1-wZTHnQHaGw&pid=Api&P=0&h=180" alt="Handcrafted Vase">
          <div class="card-body">
            <p class="product-title">Handcrafted Vase</p>
            <p>Beautifully designed ceramic vase.</p>
            <p class="product-price">$15.00</p>
          </div>
          <button class="btn btn-primary buy-now-btn" onclick="redirectToCheckout()">Buy Now</button>
        </div>
      </div>
    </div>

    <!-- Product 2 -->
    <div class="col-sm-3">
      <div class="panel panel-default product-card">
        <div class="panel-body">
          <img src="https://tse1.mm.bing.net/th?id=OIP.M2M6CK19gGvlylX8OjzOpQHaF_&pid=Api&P=0&h=180" alt="Wooden Sculpture">
          <div class="card-body">
            <p class="product-title">Wooden Sculpture</p>
            <p>Intricately carved wooden masterpiece.</p>
            <p class="product-price">$15.00</p>
          </div>
          <button class="btn btn-primary buy-now-btn" onclick="redirectToCheckout()">Buy Now</button>
        </div>
      </div>
    </div>

    <!-- Add more products in the same structure as above -->

  </div>
</div>
</body>
</html>
