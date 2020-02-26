<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShipmentType View Page</title>

<style><%@include file="style.css"%></style>
</head>
<style>
	#wrapper{
		width: 50%;
	}
	table th{
		background: none;
		width: 20%;
		text-align: left;
		color:green;
		border-color:green;
	}
	table td{
		text-align: left;
	}
</style>
<body>
	
<h1>Welcome to Shipment Type Data Page</h1>

<div id="wrapper" >
	<div id="link"><a href="register">REGISTER</a></div>
	<div id="link"><a href="all">VIEW ALL</a></div>
	<div id="link"><a href="excel?id=${ob.shipId }">Export to EXCEL</a></div>
	<div id="link"><a href="pdf?id=${ob.shipId }">Export to EXCEL</a></div>
	
		<table border="1">
			<tr>
				<th>ID</th><td>${ob.shipId }</td>
			</tr>
			<tr>
				<th>MODE</th><td>${ob.shipMode }</td>
			</tr>
			<tr>
				<th>CODE</th><td>${ob.shipCode}</td>
			</tr>
			<tr>
				<th>ENABLE</th><td>${ob.enabShip }</td>
			</tr>
			<tr>
				<th>GRADE</th><td>${ob.shipGrade }</td>
			</tr>
			<tr>
				<th>DESC</th><td>${ob.shipDesc }</td>
			</tr>
		</table>
		
</div>

</body>
</html>