<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>View Customer By ID</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 500px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }

    h3 {
        color: #343a40;
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        color: #343a40;
    }

    select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ced4da;
        border-radius: 5px;
        font-size: 16px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        text-transform: uppercase;
        margin-top: 10px;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    .btn:focus {
        outline: none;
    }
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<div class="container">
    <h3><u>View Customer By ID</u></h3>
    <form method="post" action="displaycustomer">
        <div class="form-group">
            <label for="customerId">Select Customer ID</label>
            <select name="id" id="customerId" class="form-select" required>
                <option value="">---Select---</option>
                <c:forEach items="${customerlist}" var="customer">
                    <option value="${customer.id}">${customer.id} - ${customer.name}</option>
                </c:forEach>
            </select>
        </div>
        <br/>
        <button type="submit" class="btn btn-success">View</button>
    </form>
</div>
</body>
</html>
