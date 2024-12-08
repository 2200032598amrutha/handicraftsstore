<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            margin: 50px auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }
        .form-label {
            font-weight: bold;
        }
        h3 {
            color: #343a40;
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h3>Add Product</h3>
            <form method="post" action="insertproduct" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label">Product Name</label>
                    <input type="text" class="form-control" name="pname" placeholder="Enter product name" required />
                </div>
                <div class="mb-3">
                    <label class="form-label">Product Price</label>
                    <input type="number" class="form-control" name="pprice" placeholder="Enter product price" step="0.01" required />
                </div>
                <div class="mb-3">
                    <label class="form-label">Product Description</label>
                    <textarea class="form-control" name="pdescription" placeholder="Enter product description" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Product Category</label>
                    <input type="text" class="form-control" name="pcategory" placeholder="Enter product category" required />
                </div>
                <div class="mb-3">
                    <label class="form-label">Product Image</label>
                    <input type="file" class="form-control" name="pimage" required />
                </div>
                <div class="btn-container">
                    <input type="submit" value="Add Product" class="btn btn-success" />
                    <input type="reset" value="Clear" class="btn btn-secondary" />
                </div>
            </form>
        </div>
    </div>
    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
