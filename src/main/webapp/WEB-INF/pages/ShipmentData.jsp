<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShipmentType View Page</title>

<link href="../resources/css/style.css" rel="stylesheet" media="screen" >
</head>
<body>
	
<h1>Welcome to Shipment Type Data Page</h1>

<div id="wrapper" >
<div id="link"><a href="excel"><img src="../resources/images/excel1.png" width="40" title="Export to Excel" /></a></div>
<div id="link"><a href="pdf"><img src="../resources/images/pdf.png" width="40" title="Export to PDF" /></a></div>
<div id="link"><a href="charts"><img src="../resources/images/chart.png" width="40" title="View Charts" /></a></div>
<div id="link"><a href="register" ><img src="../resources/images/register-icon.png" width="40" title="Register" /></a></div>
	
	<c:choose>
		<c:when test="${!empty list }">
			
			<table border="1">
				<tr>
					<th>ID</th>
					<th>MODE</th>
					<th>CODE</th>
					<th>ENABLE</th>
					<th>GRADE</th>
					<th>DESC</th>
					<th colspan="3">OPERATIONS</th>
					
				</tr>
				<c:forEach items="${list }" var="ob">
					<tr>
						<td>${ob.shipId }</td>
						<td>${ob.shipMode }</td>
						<td>${ob.shipCode}</td>
						<td>${ob.enabShip }</td>
						<td>${ob.shipGrade }</td>
						<td>${ob.shipDesc }</td>
						<td>
							<a href="delete?sid=${ob.shipId }">
							<img src="../resources/images/bin.png" width="20" title="Delete">
							</a>
						</td>
						<td><a href="edit?sid=${ob.shipId }">
							<img src="../resources/images/edit1.png" width="20"  title="Edit this Record">
						</a></td>
						<td><a href="view?sid=${ob.shipId }"><img src="../resources/images/view1.png" width="20"  title="View This Record"/></a></td>
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