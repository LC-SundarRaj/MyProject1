<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Registration Page</title>



<link href="../resources/css/style.css" rel="stylesheet" media="screen" ></head>
<body  >
<h1>Welcome to Order Registration Page</h1>

<div id="wrapper" >

<div id="link"><a href="all"><img src="../resources/images/view_all.png" width="40" title="View All" /></a></div>

<f:form action="save" method="post" modelAttribute="order">
		<!-- <pre> -->	
			<div id="fblock" >
				<div id="lft">
					<h4>ORDER MODE :</h4>
				</div>
				<div id="rht">
					<span><f:radiobutton path="orderMode" value="sale"/>SALE</span>
					<span><f:radiobutton path="orderMode" value="purchase"/>PURCHASE</span>
					
				</div>
			</div>
			
			<div id="fblock">
				<div id="lft">
					<h4>ORDER CODE :</h4>		
				</div>
				<div id="rht">
					<f:input path="orderCode" placeholder="Enter Order Code" />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>ORDER METHOD :</h4> 	
				</div>
				<div id="rht">
					<f:select path="orderMethod">
						<f:option value="">-SELECT-</f:option>
						<f:option value="FIFO">FIFO</f:option>
						<f:option value="LIFO">LIFO</f:option>
						<f:option value="FCFO">FCFO</f:option>
						<f:option value="FEFO">FEFO</f:option>
					</f:select>
				</div>				
			</div>	
			<div id="fblock">
				<div id="lft">
					<h4>ORDER ACCEPT :</h4>		
				</div>
				<div id="rht" >
					<span><f:checkbox path="orderAccept" value="Multi-model"/> Multi-model</span>
					<span><f:checkbox path="orderAccept" value="Accept Return" /> Accept Return</span>
				</div>
				
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>ORDER DESCRIPTION:</h4> 	
		
				</div>		
				<div id="rht">
					<f:textarea path="orderDesc" rows="5" placeholder="Order Description "></f:textarea>
				</div>
			</div>
				
			<div id="fblock">
			<input type="submit" value="CREATE ORDER METHOD" class="button">
			
			</div>
		<!-- </pre> -->
	</f:form> 
	
<h5>${msg }</h5>	
</div>


</body>
</html>