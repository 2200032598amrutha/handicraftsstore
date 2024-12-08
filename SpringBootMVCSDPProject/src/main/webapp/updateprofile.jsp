<%@page import="com.klef.jfsd.springbootsdp.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
<%@ include file="customernavbar.jsp" %>
<h3 align="center">Customer Update Profile Form</h3>
<div class="container mt-4">
    <%-- Display success message if available --%>
    <c:if test="${not empty message}">
        <div class="alert alert-success text-center">
            ${message}
        </div>
    </c:if>

    <form method="post" action="update">
        <!-- ID Field -->
        <div class="mb-3">
            <label for="cid" class="form-label">ID</label>
            <input type="number" class="form-control" id="cid" name="cid" 
                   value="<%=c.getId()%>" readonly="readonly" required />
        </div>

        <!-- Name Field -->
        <div class="mb-3">
            <label for="cname" class="form-label">Enter Name</label>
            <input type="text" class="form-control" id="cname" name="cname" 
                   value="<%=c.getName()%>" required />
        </div>

        <!-- Gender Field -->
        <div class="mb-3">
            <label class="form-label">Select Gender</label><br />
            <input type="radio" id="male" name="cgender" class="form-check-input" value="Male" 
                   <%= "Male".equals(c.getGender()) ? "checked" : "" %> required />
            <label for="male" class="form-check-label">Male</label>
            <input type="radio" id="female" name="cgender" class="form-check-input" value="Female" 
                   <%= "Female".equals(c.getGender()) ? "checked" : "" %> required />
            <label for="female" class="form-check-label">Female</label>
            <input type="radio" id="others" name="cgender" class="form-check-input" value="Others" 
                   <%= "Others".equals(c.getGender()) ? "checked" : "" %> required />
            <label for="others" class="form-check-label">Others</label>
        </div>

        <!-- Date of Birth Field -->
        <div class="mb-3">
            <label for="cdob" class="form-label">Select Date of Birth</label>
            <input type="date" class="form-control" id="cdob" name="cdob" 
                   value="<%=c.getDateofbirth()%>" required />
        </div>

        <!-- Email Field -->
        <div class="mb-3">
            <label for="cemail" class="form-label">Enter Email ID</label>
            <input type="email" class="form-control" id="cemail" name="cemail" 
                   value="<%=c.getEmail()%>" readonly="readonly" required />
        </div>

        <!-- Password Field -->
        <div class="mb-3">
            <label for="cpwd" class="form-label">Enter Password</label>
            <input type="password" class="form-control" id="cpwd" name="cpwd" 
                   value="<%=c.getPassword()%>" required />
        </div>

        <!-- Location Field -->
        <div class="mb-3">
            <label for="clocation" class="form-label">Enter Location</label>
            <input type="text" class="form-control" id="clocation" name="clocation" 
                   value="<%=c.getLocation()%>" required />
        </div>

        <!-- Contact Field -->
        <div class="mb-3">
            <label for="ccontact" class="form-label">Enter Contact</label>
            <input type="number" class="form-control" id="ccontact" name="ccontact" 
                   value="<%=c.getContact()%>" required />
        </div>

        <!-- Buttons -->
        <div class="d-flex justify-content-center">
            <input type="submit" value="Update" class="btn btn-success me-2" />
            <input type="reset" value="Clear" class="btn btn-secondary" />
        </div>
    </form>
</div>
</body>
</html>
