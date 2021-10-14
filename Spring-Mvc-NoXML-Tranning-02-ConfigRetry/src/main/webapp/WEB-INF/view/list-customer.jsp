<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>List - Customer</title>
	</head>
	<body>
		<div id = "wrapper" >
			<div id = "header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
			<div id="content">
					
				<!-- Read function -->
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
					<c:forEach var="temp" items="${listCustomer}">
									
						<tr>
							<td>${temp.firstName}</td>
							<td>${temp.lastName}</td>
							<td>${temp.email}</td>	
						</tr>
					</c:forEach>					
				</table>
				
			</div>
		</div>
		
	
	</body>
</html>