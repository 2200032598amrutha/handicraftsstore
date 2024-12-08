<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JFSD</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url('https://tse3.mm.bing.net/th?id=OIP.BbMTYsmlD8JIVAvw_v47AgHaDv&pid=Api&P=0&h=180');;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: cover;
            background-color: lightgrey;
            font-family: Arial, sans-serif;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
            font-weight: bold;
        }

        .navbar {
            display: flex;
            justify-content: right;
            background-color: #007bff;
            padding: 20px;
            border-radius: 8px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
            font-weight: bold;
        }

        .navbar a:hover {
            color: #ffeb3b;
            text-decoration: underline;
        }
    </style>
</head>
<body>
   
    <div class="navbar">
        <a href="/">HOME</a>
          <a href="articianlogin.jsp">Artician login</a>
        <a href="customerreg">Customer Registration</a>
        <a href="customerlogin">Customer Login</a>
        <a href="adminlogin">Admin Login</a>
    </div>
</body>
</html>