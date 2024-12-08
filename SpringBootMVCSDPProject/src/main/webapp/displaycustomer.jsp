<%@ page import="com.klef.jfsd.springbootsdp.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="jakarta.tags.core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Customer</title>
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
    <%@ include file="adminnavbar.jsp" %>
    <br/><br/>

    <h3 align="center">Display Customer</h3>
    <div class="profile-details">
        ID:<c:out value="${c.id}"></c:out><br/>
        Name:<c:out value="${c.name}"></c:out><br/>
        Gender:<c:out value="${c.gender}"></c:out><br/>
        Date of Birth:<c:out value="${c.dateofbirth}"></c:out><br/>
        Email:<c:out value="${c.email}"></c:out><br/>
        Location:<c:out value="${c.location}"></c:out><br/>
        Contact:<c:out value="${c.contact}"></c:out><br/>
    </div>
</body>
</html>
