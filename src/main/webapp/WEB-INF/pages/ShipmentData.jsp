<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShipmentType View Page</title>

<%@include file="userMenu.jsp" %>
</head>
<body>
	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Shipment Data Page</h1></div>
			<div class="card-body bg-light">
			<a href="excel" class="btn btn-warning font-weight-bold">Export to Excel <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c3;</i></a>
			<a href="pdf" class="btn btn-warning font-weight-bold">Export to PDF <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c1;</i></a>
			
			<c:choose>
				<c:when test="${!empty list }">
					
					<table  class="table table-bordered table-hover mt-2">
						<tr class="bg-primary text-white">
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
								<td class="text-center">
									<a href="delete?sid=${ob.shipId }" data-toggle="tooltip" data-placement="top" title="Delete this Record">
									<i class='far fa-trash-alt text-danger text-center' ></i>
									</a>
								</td>
								<td class="text-center"><a href="edit?sid=${ob.shipId }" data-toggle="tooltip" data-placement="top" title="Edit this Record">
									<i class="fa fa-edit text-info text-center"></i>
								</a></td>
								<td class="text-center"><a href="view?sid=${ob.shipId }">
								<i class="fa fa-eye text-center text-success"></i></a></td>
							</tr>
						</c:forEach>
					</table>
				</c:when>
				<c:otherwise>
					No Data Found!!!
				</c:otherwise>
				</c:choose>
				</div>
				
				<c:if test="${!empty message }">
					<c:choose>
						<c:when test="${opr eq 'del'}">
							<div class="card-footer bg-danger text-white text-center"><b>${message }</b></div>
						</c:when>
						<c:otherwise>
							<div class="card-footer bg-info text-white text-center"><b>${message }</b></div>
						</c:otherwise>
					</c:choose>
				</c:if>

					
		</div>
	</div>
</body>
</html>