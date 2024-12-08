<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="style.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>Shopping Cart</title>
  <style>
    body {
      background-color: lightgrey;
      font-family: Arial, sans-serif;
    }
    .cart-container {
      margin: 20px auto;
      padding: 20px;
      max-width: 900px;
      background-color: white;
      border-radius: 5px;
    }
    .product-item {
      display: flex;
      align-items: center;
      padding: 15px;
      border-bottom: 1px solid #ddd;
    }
    .product-item img {
      width: 120px;
      height: 120px;
      margin-right: 20px;
    }
    .product-info {
      flex: 1;
    }
    .product-info h4 {
      margin: 0;
      font-size: 18px;
    }
    .product-info p {
      margin: 5px 0;
      color: #888;
    }
    .product-price {
      font-size: 18px;
      font-weight: bold;
    }
    .total-price {
      font-size: 20px;
      font-weight: bold;
      text-align: right;
      margin-top: 20px;
    }
    .btn-checkout {
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
      text-transform: uppercase;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .btn-checkout:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

<!-- Header -->
<h2 style="text-align: center;">Shopping Cart</h2>

<!-- Cart Container -->
<div class="cart-container">
  <div class="product-item">
    <img src="https://tse4.mm.bing.net/th?id=OIP.nWjZdBkyi7NiKaW2p-V1oQHaHa&pid=Api&P=0&h=180" alt="Product 1">
    <div class="product-info">
      <h4>Product 1</h4>
      <p>Short description of Product 1</p>
    </div>
    <div class="product-price">$50.00</div>
  </div>

  <div class="product-item">
    <img src="https://tse4.mm.bing.net/th?id=OIP.pKoshgC9W-IY8N5m5D3_2wHaFb&pid=Api&P=0&h=180" alt="Product 2">
    <div class="product-info">
      <h4>Product 2</h4>
      <p>Short description of Product 2</p>
    </div>
    <div class="product-price">$30.00</div>
  </div>

  <!-- Total Price -->
  <div class="total-price">
    Total: $80.00
  </div>

  <!-- Checkout Button -->
  <div style="text-align: right; margin-top: 20px;">
    <a href="checkout.jsp">
      <button class="btn-checkout">Checkout</button>
    </a>
  </div>
</div>

</body>
</html>
