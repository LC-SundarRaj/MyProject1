<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Method Edit Page</title>
	
<%@include file="userMenu.jsp" %>

</head>
<body  >
<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Order Method Edit Page</h1></div>
			<div class="card-body bg-light">
	
			<f:form action="update" method="post" modelAttribute="order">
				<div class="row pt-1 pb-1">
					<div class="col-4"><label for="orderId">ORDER ID :</label></div>		
					<div class="col-4"><f:input path="orderId" readonly="true" class="form-control"/></div>
					<div class="col-4"></div>
				</div>
				<div class="row pt-1 pb-1" >
					<div class="col-4">
						<label for="orderMode" class="">ORDER MODE :</label>
					</div>
					<div class="col-4">
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							  <label class="btn btn-outline-dark active ">
							      <f:radiobutton path="orderMode" aria-label="orderMode" />SALE
							  </label>
							  <label class="btn btn-outline-dark ">
								<f:radiobutton path="orderMode" value="PURCHASE" /> PURCHASE
							  </label>
							</div>
					</div>
					<div class="col-4">
					
					</div>
				</div>
				<div class="row pt-1 pb-1" >
					<div class="col-4">
						<label for="orderCode" class="">ORDER CODE :</label>
					</div>
					<div class="col-4">
						<f:input path="orderCode" placeholder="Enter Order Code" class="form-control" />
					</div>
					<div class="col-4">
						
					</div>
				</div>
			
				<div class="row pt-1 pb-1" >
					<div class="col-4">
						<label for="orderMethod" class="">ORDER METHOD :</label>
					</div>
					<div class="col-4">
						<f:select path="orderMethod" class="form-control">
							<f:option value="">-SELECT-</f:option>
							<f:option value="FIFO">FIFO</f:option>
							<f:option value="LIFO">LIFO</f:option>
							<f:option value="FCFO">FCFO</f:option>
							<f:option value="FEFO">FEFO</f:option>
						</f:select>
					</div>
					<div class="col-4">
						
					</div>
				</div>
			
				<div class="row pt-1 pb-1" >
					<div class="col-4">
						<label for="orderMethod" class="">ORDER ACCEPT :</label>
					</div>
					<div class="col-4">
					<!-- 	<div class="custom-control custom-checkbox"> -->
							<f:checkbox path="orderAccept" value="Multi-model"  /> Multi-model<br>
							<f:checkbox path="orderAccept" value="Accept Return" /> Accept Return
					<!-- 	</div> -->
					</div>
					<div class="col-4">
						
					</div>
				</div>
			
				<div class="row pt-1 pb-1" >
					<div class="col-4">
						<label for="orderMethod" class="">ORDER DESCRIPTION:</label>
					</div>
					<div class="col-4">
						<f:textarea path="orderDesc" rows="5" placeholder="Order Description " class="form-control"></f:textarea>
					</div>
					<div class="col-4">
						
					</div>
				</div>
			
				<div class="row pt-1 pb-1">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="UPDATE ORDER METHOD" class="btn btn-dark">
							<input type="reset" value="CLEAR" class="btn btn-info">
						</div>
						<div class="col-4"></div>
					
				</div>		
			</f:form> 
		</div>
				<div class="card-footer font-italic text-white text-center bg-info">
					${message }
				</div>
			<%-- <c:if test="${!empty message }">
				<div class="card-footer font-italic text-white text-center bg-info">
					${message }
				</div>
			</c:if> --%>
		</div>

	</div>

</body>
</html>