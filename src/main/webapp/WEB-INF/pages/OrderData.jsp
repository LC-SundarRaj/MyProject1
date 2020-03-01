<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Data Page</title>
<link href="../resources/css/style.css" rel="stylesheet" media="screen" >
</head>
<body>
	
<h1>Welcome to Order Data Page</h1>

<div id="wrapper" >
<div id="link"><a href="register"><img src="../resources/images/register-icon.png" width="40" title="Register" /></a></div>
	<c:choose>
		<c:when test="${!empty list }">
			<table border="1">
				<tr>
					<th>ID</th>
					<th>MODE</th>
					<th>CODE</th>
					<th>METHOD</th>
					<th>ACCEPT</th>
					<th>DESCRIPTION</th>
					<th colspan ="2">OPERATION</th>
				</tr>
				<c:forEach items="${list }" var="ob">
					<tr>
						<td>${ob.orderId }</td>
						<td>${ob.orderMode }</td>
						<td>${ob.orderCode }</td>
						<td>${ob.orderMethod }</td>
						<td>${ob.orderAccept }</td>
						<td>${ob.orderDesc }</td>
						<td><a href="delete?oid=${ob.orderId }"><img src="../resources/images/bin.png" width="20" title="Delete this row" /></a></td>
						<td><a href="edit?oid=${ob.orderId }"><img src="../resources/images/edit1.png" width="20" title="Edit the Row" /></a></td>
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