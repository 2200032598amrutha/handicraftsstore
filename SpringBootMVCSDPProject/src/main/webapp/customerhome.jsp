<%@page import="com.klef.jfsd.springbootsdp.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Customer Home</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
    /* Custom style to make the grid layout */
    .container {
      max-width: 1200px; /* Limit the container's width for better presentation */
      margin-top: 20px; /* Add space at the top */
    }

    .image-container {
      display: flex;
      flex-wrap: wrap; /* Allow wrapping of images */
      gap: 20px; /* Space between images */
      justify-content: space-between; /* Ensure images are spaced evenly */
      padding-top: 20px;
    }

    .image-item {
      position: relative;
      width: 32%; /* Each image takes up roughly 1/3 of the row */
      height: 250px; /* Set a fixed height for images */
      margin-bottom: 20px;
      border-radius: 10px; /* Rounded corners */
      overflow: hidden;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
      transition: transform 0.3s ease, box-shadow 0.3s ease; /* Add transition for hover effect */
    }

    .image-item img {
      width: 100%;
      height: 100%;
      object-fit: cover; /* Ensure the image covers the area without stretching */
    }

    .image-item:hover {
      transform: scale(1.05); /* Slight zoom effect on hover */
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
    }

    .image-text {
      position: absolute;
      bottom: 10px; /* Position the text 10px from the bottom edge */
      left: 10px; /* Position the text 10px from the left edge */
      color: white; /* Text color */
      font-size: 24px; /* Text size */
      font-weight: bold; /* Bold text */
      text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Add text shadow for better visibility */
      padding: 5px; /* Optional padding for text */
    }

    /* Modal Styles */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Fixed position to cover the screen */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.8); /* Black background with opacity */
      overflow-y: auto; /* Ensure scrolling in case of large content */
    }

    .modal-content {
      background-color: #fff;
      margin: 10% auto;
      padding: 30px;
      border-radius: 10px;
      width: 70%; /* Adjusted width for smaller modal */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 20px;
    }

    .modal-body {
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 30px;
    }

    #modalImage {
      width: 50%; /* Adjust the image size for a smaller view */
      height: auto;
      object-fit: contain;
      border-radius: 10px;
    }

    .modal-text {
      font-size: 18px; /* Adjust font size */
      color: #333;
      font-weight: bold;
      text-align: center;
      flex: 1;
      padding: 10px;
      line-height: 1.5;
    }

    .close {
      position: absolute;
      top: 10px;
      right: 20px;
      color: #aaa;
      font-size: 40px;
      font-weight: bold;
      cursor: pointer;
    }

    .close:hover,
    .close:focus {
      color: black;
      text-decoration: none;
    }

    /* Ensure there's no unwanted horizontal scrolling */
    body {
      overflow-x: hidden;
    }
  </style>
</head>
<body>

<%@ include file="customernavbar.jsp" %>

<!-- Image Grid Layout -->
<div class="container">
  <div class="image-container">
    <!-- Image Item 1 (Gond Paintings) -->
    <div class="image-item">
      <img src="https://i.pinimg.com/originals/4f/e1/f2/4fe1f26cd8f4fbf19b0eefa50f87f7c7.jpg" alt="Gond Paintings" class="image-clickable">
      <div class="image-text">Gond Paintings</div>
    </div>

    <!-- Modal for Gond Paintings -->
    <div id="imageModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <div class="modal-body">
          <img id="modalImage" src="" alt="Enlarged Image" />
          <div id="modalText" class="modal-text"></div>
        </div>
      </div>
    </div>

    <!-- Image Item 2 (Kondapalli Toys) -->
    <div class="image-item">
      <img src="https://tse3.mm.bing.net/th?id=OIP.PVKCIexn7YVLdWIEoIkxoAAAAA&pid=Api&P=0&h=180" alt="Kondapalli Toys" class="image-clickable">
      <div class="image-text">Kondapalli Toys</div>
    </div>

    <!-- Modal for Kondapalli Toys -->
    <div id="kondapalliModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <div class="modal-body">
          <img id="modalImage" src="" alt="Enlarged Image" />
          <div id="modalText" class="modal-text"></div>
        </div>
      </div>
    </div>

    <!-- Image Item 3 (Kalamkari Paintings) -->
    <div class="image-item">
      <img src="https://tse2.mm.bing.net/th?id=OIP._OP7aJyMdVpIsTv_qoaoIAHaFk&pid=Api&P=0&h=180" alt="Kalamkari Paintings" class="image-clickable">
      <div class="image-text">Kalamkari Paintings</div>
    </div>

    <!-- Modal for Kalamkari Paintings -->
    <div id="kalamkariModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <div class="modal-body">
          <img id="modalImage" src="" alt="Enlarged Image" />
          <div id="modalText" class="modal-text"></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- JavaScript for Modal Functionality -->
<script>
  // Get the modal and the image clicked for each category
  var gondModal = document.getElementById("imageModal");
  var kondapalliModal = document.getElementById("kondapalliModal");
  var kalamkariModal = document.getElementById("kalamkariModal");
  var modalImage = document.getElementById("modalImage");
  var modalText = document.getElementById("modalText");
  var closeBtns = document.getElementsByClassName("close");

  // When an image is clicked, open the respective modal and show the image with text
  document.querySelectorAll('.image-clickable').forEach(function(image) {
    image.onclick = function() {
      if (this.alt === "Gond Paintings") {
        gondModal.style.display = "block"; 
      } else if (this.alt === "Kondapalli Toys") {
        kondapalliModal.style.display = "block";
      } else if (this.alt === "Kalamkari Paintings") {
        kalamkariModal.style.display = "block";
      }

      modalImage.src = this.src; // Set the clicked image to the modal
      modalText.innerHTML = getImageDescription(this.alt); // Set the description based on the image alt text
    };
  });

  // When the close button is clicked, close the respective modal
  for (var i = 0; i < closeBtns.length; i++) {
    closeBtns[i].onclick = function() {
      gondModal.style.display = "none";
      kondapalliModal.style.display = "none";
      kalamkariModal.style.display = "none";
    };
  }

  // Function to return description based on image
  function getImageDescription(imageAlt) {
    if (imageAlt === "Gond Paintings") {
      return "Gond paintings are vibrant, detailed works of art from the Gond tribe of Madhya Pradesh. Known for their intricate patterns and symbolism, these artworks depict stories from nature, mythology, and the tribal community.";
    } else if (imageAlt === "Kondapalli Toys") {
      return "Kondapalli toys are traditional handcrafted wooden toys from the village of Kondapalli, Andhra Pradesh. They are painted with natural dyes and showcase the skill of local artisans.";
    } else if (imageAlt === "Kalamkari Paintings") {
      return "Kalamkari paintings are a form of traditional Indian art known for their intricate and vibrant designs, often depicting mythological themes, using natural dyes on fabric or paper.";
    }
  }
</script>

</body>
</html>
