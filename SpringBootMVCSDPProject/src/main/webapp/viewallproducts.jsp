<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Products</title>
    <!-- Link Bootstrap CSS for better styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h3 class="text-center text-primary mb-4">View All Products</h3>

    <div class="table-responsive">
        <table class="table table-bordered table-striped align-middle">
            <thead class="table-primary">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Cost</th>
                    <th>Image</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><c:out value="${product.id}"/></td>
                        <td><c:out value="${product.name}"/></td>
                        <td><c:out value="${product.description}"/></td>
                        <td><c:out value="${product.category}"/></td>
                        <td><c:out value="${product.cost}"/></td>
                        <td>
                            <img src="displayproductimage?id=${product.id}" class="img-thumbnail" style="width: 150px; height: auto;" alt="Product Image"/>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Include Bootstrap JS for responsive features -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
