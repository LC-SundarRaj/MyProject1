<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Shipment VIEW Page</h1></div>
			<div class="card-body bg-light">

				<a href="excel?id=${ob.shipId }" class="btn btn-info">Export to Excel <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c3;</i></a>
				<a href="pdf?id=${ob.shipId }" class="btn btn-info">Export to PDF <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c1;</i></a>
					
				
						<table class="table table-bordered table-hovered  mt-2">
							<tr>
								<th class="bg-secondary text-white">ID</th><td>${ob.shipId }</td>
							</tr>
							<tr>
								<th class="bg-secondary text-white">MODE</th><td>${ob.shipMode }</td>
							</tr>
							<tr>
								<th class="bg-secondary text-white">CODE</th><td>${ob.shipCode}</td>
							</tr>
							<tr>
								<th  class="bg-secondary text-white">ENABLE</th><td>${ob.enabShip }</td>
							</tr>
							<tr>
								<th  class="bg-secondary text-white">GRADE</th><td>${ob.shipGrade }</td>
							</tr>
							<tr>
								<th  class="bg-secondary text-white">DESC</th><td>${ob.shipDesc }</td>
							</tr>
						</table>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>