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
  <title>Products</title>
  <style>
    .product-card {
      margin-bottom: 30px;
      display: flex;
      flex-direction: column; /* Stack content vertically */
      justify-content: space-between; /* Distribute space evenly */
      height: 100%; /* Ensure cards take the full height */
    }

    .product-card img {
      height: 200px;
      width: 100%;
      object-fit: cover;
    }

    .card-body {
      text-align: center;
      flex-grow: 1; /* Allow this section to stretch */
    }

    .product-title {
      font-size: 18px;
      font-weight: bold;
    }

    .product-price {
      color: #28a745;
      font-size: 20px;
      font-weight: bold;
    }

    .buy-now-btn {
      margin-top: 10px;
      width: 100%;
    }

    .row {
      display: flex;
      flex-wrap: wrap; /* Ensure cards wrap to the next row if needed */
    }

    .col-sm-3 {
      display: flex;
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
<h2 align="center">Our Products</h2>

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
