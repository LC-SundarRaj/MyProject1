<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom Edit Page</title>

<%@include file="userMenu.jsp" %>
</head>
<body  >
<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Uom Edit Page</h1></div>
			<div class="card-body bg-light">
			
			<form:form action="update" method="post" modelAttribute="uom">
				<div class="row pt-1 pb-1">
					<div class="col-4"><label for="uid">Uom ID :</label></div>		
					<div class="col-4"><form:input path="uid" readonly="true" class="form-control"/></div>
					<div class="col-4"></div>
				</div>
					
				<div class="row pt-1 pb-1">
					<div class="col-4"><label for="shipId">Uom Type :</label></div>		
					<div class="col-4">
						<form:select path="uType" class="form-control">
							<form:option id="opt" value="">--SELECT--</form:option>
							<form:option id="opt" value="PACKING">PACKING</form:option>
							<form:option id="opt" value="No PACKING">NO PACKING</form:option>
							<form:option id="opt" value="-NA-">-NA-</form:option>
						</form:select>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row pt-1 pb-1">
					<div class="col-4"><label for="uid">UOM MODEL :</label></div>		
					<div class="col-4"><form:input path="uModel"  placeholder="Enter UOM Model" class="form-control"/></div>
					<div class="col-4"></div>
				</div>
				
				<div class="row pt-1 pb-1">
					<div class="col-4"><label for="uDesc">UOM DESCRIPTION:</label></div>		
					<div class="col-4"><form:textarea path="uDesc"  placeholder="Uom Description" class="form-control"/></div>
					<div class="col-4"></div>
				</div>
								
					
				<div class="row pt-1 pb-1">
					<div class="col-4"></div>
					<div class="col-4">
							<input type="submit" value="UPDATE UOM" class="btn btn-dark">
							<input type="reset" value="CLEAR" class="btn btn-info">
					</div>
					<div class="col-4"></div>
					
				</div>
			</form:form> 
		</div>
	<h5>${message }</h5>
</div>


</body>
</html>