<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Product Details</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="mb-4">Change Product Details</h1>
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				
				<input type="hidden" value="${product.id }" name="id"/>
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" name="name" id="productName"
							placeholder="Enter product name" value="${product.name }" required>
					</div>
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="description"
							id="productDescription" rows="5"
							placeholder="Enter product description">${product.description }</textarea>
					</div>
					<div class="form-group">
						<label for="price">Product Price</label> <input type="number"
							class="form-control" name="price" id="productPrice"
							placeholder="Enter product price" value="${product.price }" required>
					</div>
					<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-warning">Update</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies (jQuery) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
