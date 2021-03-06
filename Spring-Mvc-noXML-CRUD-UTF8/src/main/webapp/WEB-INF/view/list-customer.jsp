<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>List - Customer</title>
		<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css">
	</head>
	<body>
		<div id = "wrapper" >
			<div id = "header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
			<div id="content">
				
				<!-- Create function -->
				<input type="button" value="Add Customer"
					onclick="window.location.href='showForm'; return false;"
					class="add-button" >
				
				<!-- Read function -->
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
					<c:forEach var="temp" items="${listCustomer}">
						
						<!-- for update function -->
						<c:url var="updateLink" value="/customer/showFormUpdate">
							<c:param name="customerId" value="${temp.id}"/>
						</c:url>
						
						<!-- for delete function -->
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${temp.id}"/>
						</c:url>
						
					
						<tr>
							<td>${temp.firstName}</td>
							<td>${temp.lastName}</td>
							<td>${temp.email}</td>
							<!--For Update + Delete function -->
							<td>
								<a href="${updateLink}">Update</a>
								|
								<a href="${deleteLink}"
									onclick="if (!(confirm('Are you want to delete this customer'))) return false">Delete</a>
							</td>
							
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		
	
	</body>
</html>