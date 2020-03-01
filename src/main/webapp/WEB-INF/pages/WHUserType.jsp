<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WH User Type Registration Page</title>


<link href="../resources/css/style.css" rel="stylesheet" media="screen" >
</head>
<body  >
<h1>Welcome to WH User Type Registration Page</h1>

<div id="wrapper" style="height:600px" >
<div id="link"><a href="all"><img src="../resources/images/view_all.png" width="40" title="View All" /></a></div>
<form action="save" method="post">
		<!-- <pre> -->	
			<div id="fblock" >
				<div id="lft">
					<h4>USER TYPE :</h4>
				</div>
				<div id="rht">
					<span><input type="radio" name="userType" value="Vendor"> Vendor</span>
					<span><input type="radio" name="userType" value="Customer"> Customer</span>
					
				</div>
			</div>
			
			<div id="fblock">
				<div id="lft">
					<h4>USER CODE :</h4>		
				</div>
				<div id="rht">
					<input type="text" name="userCode" placeholder="Enter User Code" />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>USER FOR :</h4> 	
				</div>
				<div id="rht">
					<input type="text" name="userFor" placeholder="Purchase/Sale" disabled="disabled" />
				</div>				
			</div>	
			<div id="fblock">
				<div id="lft">
					<h4>USER MAIL :</h4>		
				</div>
				<div id="rht">
					<input type="text" name="userMail" placeholder="Enter User eMail" />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>USER CONTACT :</h4>		
				</div>
				<div id="rht">
					<input type="text" name="userContact" placeholder="Enter User Contact No." />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>USER ID TYPE :</h4>		
				</div>
				<div id="rht" >
					<select name="userIdType">
						<option>--SELECT--</option>
						<option>PAN CARD</option>
						<option>ADHAR CARD</option>
						<option>VOTER ID</option>
						<option>OTEHR</option>
					</select>

				</div>
				
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>* IF OTHER :</h4>		
				</div>
				<div id="rht">
					<input type="text" name="otherIdType" placeholder="Enter OTHER " />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>ID Number :</h4>		
				</div>
				<div id="rht">
					<input type="text" name="IDNumber" placeholder="ID Number" />
				</div>
			</div>
			
			<div id="fblock">
				<input type="submit" value="CREATE USER" class="button">
			</div>
		<!-- </pre> -->
	</form> 
	<h5>${message }</h5>
</div>


</body>
</html>