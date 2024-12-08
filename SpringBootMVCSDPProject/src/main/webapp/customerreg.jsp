<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://tse1.mm.bing.net/th?id=OIP.DRmRSwAWoxQet0-ULrCYZAHaFb&pid=Api&P=0&h=180'); 
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        margin: 0;
        padding: 0;
        color: #333;
    }
    .container {
        max-width: 400px;
        margin: 20px auto;
        background: rgba(255, 255, 255, 0.85);
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        border: 1px solid #ddd;
    }
    h3 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 1.5rem;
        color: #555;
        font-weight: bold;
        text-transform: uppercase;
    }
    label {
        font-weight: bold;
        display: block;
        margin: 10px 0 5px;
        font-size: 0.9rem;
    }
    .form-control, .form-check-input {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 0.9rem;
    }
    .form-check-input {
        width: auto;
        margin-right: 8px;
    }
    .btn-container {
        display: flex;
        justify-content: space-between;
    }
    .btn {
        width: 48%;
        padding: 8px;
        border: none;
        border-radius: 5px;
        font-size: 0.9rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .btn-success {
        background-color: #28a745;
        color: #fff;
    }
    .btn-success:hover {
        background-color: #218838;
    }
</style>
</head>
<body>

<div class="container">
    <form method="post" action="insertcustomer">
    <h3>Customer Registration</h3>
        <label>Enter Name</label>
        <input type="text" class="form-control" name="cname" placeholder="Enter your full name" required />
        
        <label>Select Gender</label>
        <div>
            <input type="radio" name="cgender" class="form-check-input" value="Male" required /> Male
            <input type="radio" name="cgender" class="form-check-input" value="Female" required /> Female
            <input type="radio" name="cgender" class="form-check-input" value="Others" required /> Others
        </div>
        
        <label>Select Date of Birth</label>
        <input type="date" name="cdob" class="form-control" required />
        
        <label>Enter Email ID</label>
        <input type="email" name="cemail" class="form-control" placeholder="example@gmail.com" required />
        
        <label>Enter Password</label>
        <input type="password" name="cpwd" class="form-control" placeholder="Enter a secure password" required />
        
        <label>Enter Location</label>
        <input type="text" name="clocation" class="form-control" placeholder="Enter your location" required />
        
        <label>Enter Contact</label>
        <input type="number" name="ccontact" class="form-control" placeholder="Enter your contact number" required />
        
        <div class="btn-container">
            <input type="submit" value="Register" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-success" />
        </div>
    </form>
</div>
</body>
</html>