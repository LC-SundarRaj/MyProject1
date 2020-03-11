<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Data Page</title>
<%@include file="userMenu.jsp" %>
</head>
<body>
	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Order Method Data Page</h1></div>
			<div class="card-body bg-light">
			<a href="excel" class="btn btn-warning font-weight-bold">Export to Excel <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c3;</i></a>
			<a href="pdf" class="btn btn-warning font-weight-bold">Export to PDF <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c1;</i></a>
			<c:choose>
				<c:when test="${!empty list }">
					<table class="table table-bordered table-hover mt-2 table-responsive-sm">
					<tr class="bg-primary text-white">
						<th>ID</th>
						<th>MODE</th>
						<th>CODE</th>
						<th>METHOD</th>
						<th>ACCEPT</th>
						<th>DESCRIPTION</th>
						<th colspan ="3">OPERATION</th>
					</tr>
					<c:forEach items="${list }" var="ob">
						<tr>
							<td>${ob.orderId }</td>
							<td>${ob.orderMode }</td>
							<td>${ob.orderCode }</td>
							<td>${ob.orderMethod }</td>
							<td>${ob.orderAccept }</td>
							<td>${ob.orderDesc }</td>
							<td class="text-center">
									<a href="delete?oid=${ob.orderId }" data-toggle="tooltip" data-placement="top" title="Delete this Record">
									<i class='far fa-trash-alt text-danger text-center' ></i>
									</a>
							</td>
							<td class="text-center"><a href="edit?oid=${ob.orderId }" data-toggle="tooltip" data-placement="top" title="Edit this Record">
									<i class="fa fa-edit text-info text-center"></i>
								</a>
							</td>
							<td class="text-center"><a href="view?oid=${ob.orderId }">
								<i class="fa fa-eye text-center text-success"></i></a>
							</td>
							
							
							
						
						</tr>
					</c:forEach>
				</table>
				
			
			</c:when>
			<c:otherwise>
				No Data Found!!!
			</c:otherwise>
		</c:choose>
		</div>
		<c:if test="${!empty message}">
			<c:choose>	
				<c:when test="${opr == 'DEL' }">
					<div class="card-footer bg-danger text-white text-center">
						<h5>${message }</h5>
					</div>
				</c:when>
				<c:otherwise>
					<div class="card-footer bg-info text-white text-center">
						<h5>${message }</h5>
					</div>
				</c:otherwise>
			</c:choose>
		</c:if>
</div>

</body>
</html>