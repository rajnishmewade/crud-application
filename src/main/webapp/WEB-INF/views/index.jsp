<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="ISO-8859-1">
<title>Index Page</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center-mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">TECHONLY ${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#x20B9 ${p.price }</td>
								<td>
								<a href="delete/${p.id }"><i
										class="fas fa-trash text-danger" style="font-size:25px;"></i></a> 
								<a href="update/${p.id }"><i
										class="fas fa-pen-nib text-primary" style="font-size:25px;"></i></a>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success"> Add
						Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>