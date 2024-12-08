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
  <title>Checkout</title>
  <style>
    .checkout-container {
      max-width: 500px;
      margin: 50px auto;
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .checkout-title {
      font-size: 24px;
      font-weight: bold;
      text-align: center;
      margin-bottom: 20px;
    }

    .product-details p {
      font-size: 18px;
      margin: 10px 0;
    }

    .btn-pay {
      width: 100%;
      font-size: 18px;
    }

    #payment-options {
      display: none;
      margin-top: 20px;
    }

    #cod-message, #qr-code, #payment-timeout-message {
      display: none;
      text-align: center;
      margin-top: 20px;
    }

    #qr-code img {
      width: 150px;
      height: 150px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="checkout-container">
    <div class="checkout-title">Checkout</div>
    
    <div class="product-details">
      <p><strong>Product:</strong> Pottery</p>
      <p><strong>Price:</strong> $15.00</p>
    </div>
    
    <button class="btn btn-success btn-pay" onclick="showPaymentOptions()">Pay Now</button>

    <div id="payment-options">
      <button class="btn btn-primary" onclick="placeOrder()">Cash On Delivery</button>
      <button class="btn btn-info" onclick="showQRCode()">Pay Online</button>
    </div>

    <div id="cod-message">
      <p>Order Placed! You will be redirected shortly...</p>
    </div>

    <div id="qr-code">
      <p>Scan to Pay</p>
      <img src="https://tse2.mm.bing.net/th?id=OIP.-9N4K3Syg-OgbET8dgDwqAHaHa&pid=Api&P=0&h=180" alt="QR Code">
    </div>

    <div id="payment-timeout-message">
      <p>Payment took longer than expected. You will be redirected shortly...</p>
    </div>
  </div>
</div>

<script>
  let qrCodeTimeout;

  function showPaymentOptions() {
    document.getElementById('payment-options').style.display = 'block';
  }

  function placeOrder() {
    document.getElementById('cod-message').style.display = 'block';
    setTimeout(function() {
      window.location.href = "productsview.jsp"; // Redirect to product view page after order placed
    }, 2000); // Wait for 2 seconds before redirecting
  }

  function showQRCode() {
    document.getElementById('qr-code').style.display = 'block';
    
    // Set a timeout of 2 minutes (120,000 ms) for the payment
    qrCodeTimeout = setTimeout(function() {
      document.getElementById('payment-timeout-message').style.display = 'block';
      setTimeout(function() {
        window.location.href = "productsview.jsp"; // Redirect after the timeout message
      }, 3000); // Redirect after 3 seconds to show the timeout message
    }, 120000); // 2 minutes in milliseconds
  }

  // Optional: Clear timeout if user interacts (this could be customized further if needed)
  function userHasPaid() {
    clearTimeout(qrCodeTimeout);
    window.location.href = "productsview.jsp"; // Redirect immediately if payment is successful
  }
</script>
</body>
</html>
