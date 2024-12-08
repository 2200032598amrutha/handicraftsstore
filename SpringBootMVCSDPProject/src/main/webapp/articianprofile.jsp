<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artisan Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .profile-section {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .profile-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
        }
        .profile-details {
            font-size: 1.2rem;
            color: #333;
            margin-top: 20px;
        }
        .profile-details p {
            margin: 5px 0;
        }
        .btn {
            display: inline-block;
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Artisan Profile</h2>

    <div class="profile-section">
        <img src="https://via.placeholder.com/150" alt="Artisan Image" class="profile-img">
        
        <div class="profile-details">
            <p><strong>Name:</strong> Amrutha Darbha</p>
            <p><strong>Email:</strong> amruthadarbha01@gmail.com</p>
            <p><strong>Location:</strong> Hyderabad, India</p>
            <p><strong>Craft Specialty:</strong> Handcrafted Wood Sculptures</p>
            <p><strong>Experience:</strong> 5 Years in crafting wooden sculptures and home decor items</p>
            <p><strong>About Me:</strong> I specialize in creating intricate wooden sculptures and other handmade wooden products. I love working with natural wood to craft beautiful pieces that tell a story. My work is inspired by nature and traditional art forms.</p>
        </div>
        
        <a href="edit-profile.jsp" class="btn">Edit Profile</a>
    </div>
</div>

</body>
</html>
