<%@ page import="com.klef.jfsd.springbootsdp.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Fetch the customer object from the session
    Customer c = (Customer) session.getAttribute("customer");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h3 {
            text-align: center;
        }
        .profile-details {
            margin: 0 auto;
            width: 50%;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            background-color: #f9f9f9;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .profile-details p {
            font-size: 16px;
            line-height: 1.8;
        }
    </style>
</head>
<body>
    <!-- Include the navigation bar -->
    <%@ include file="customernavbar.jsp" %>
    <br/><br/>

    <h3>My Profile</h3>
    <div class="profile-details">
        <p><strong>ID:</strong> <%= c.getId() %></p>
        <p><strong>Name:</strong> <%= c.getName() %></p>
        <p><strong>Gender:</strong> <%= c.getGender() %></p>
        <p><strong>Date of Birth:</strong> <%= c.getDateofbirth() %></p>
        <p><strong>Email:</strong> <%= c.getEmail() %></p>
        <p><strong>Location:</strong> <%= c.getLocation() %></p>
        <p><strong>Contact:</strong> <%= c.getContact() %></p>
    </div>
</body>
</html>
