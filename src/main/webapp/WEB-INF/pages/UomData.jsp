<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom Data Page</title>

<style><%@include file="style.css"%></style>
</head>
<body>
	
<h1>Welcome to Uom Data Page</h1>

<div id="wrapper" >
<div id="link"><a href="register">Register</a></div>
	<c:choose>
		<c:when test="${!empty list }">
			<table border="1">
				<tr>
					<th>ID</th>
					<th>TYPE</th>
					<th>MODEL</th>
					<th>DESCRIPTION</th>
					<th colspan="2">OPERATION</th>
					
				</tr>
				<c:forEach items="${list }" var="ob">
					<tr>
						<td>${ob.uid }</td>
						<td>${ob.uType }</td>
						<td>${ob.uModel }</td>
						<td>${ob.uDesc }</td>
						<td><a href="delete?uomId=${ob.uid }">DELETE</a></td>
						<td><a href="#">EDIT</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			No Data Found!!!
		</c:otherwise>
	</c:choose>
	<h5>${message }</h5>
</div>

</body>
</html>