<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.btnSubmit
{
    width: 20%;
    border-radius: 1rem;
    padding: 1.5%;
    border: none;
    cursor: pointer;
    font-weight: 600;
    color: #fff;
    background-color:green;
}
</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body style="background-color: lavender" >
<div class="wrapper">
        <div class="container">
	<h1>
		<center>Welcome To The Manager/Cashier Page</center>
	</h1>

	<center>
			
				<!--<tr>
				 <td>Choose Role:</td>
				<td><select id="role" name="Select Role">
						<option value="Manager">Manager</option>
						<option value="Cashier">Cashier</option>
				</select><br>
				</tr> -->

			<form action="/customerForm" method="get"><input type="submit" class="btnSubmit" name="submit" value="Add Customer"></form>
			
			<br>
			<br>
			
			<form action="/billing" method="post"><input type="submit" class="btnSubmit" name="submit" value="Generate Bill"></form>
			<br>
			<form action="/showpage" method="get"><input type="submit" class="btnSubmit" name="submit" value="Generate Bill2"></form>
			<br>
			<br>
			
			<form action="/inventory" method="get"><input type="submit" class="btnSubmit" name="submit" value="Add Inventory"></form>
			
			<br>
			<br>
			
			<form action="/viewInventory" method="get"><input type="submit" class="btnSubmit" name="submit" value="View Inventory"></form>
			
			<br>
			<br>
			
			<form action="/reportGeneration" method="post"><input type="submit" class="btnSubmit" name="submit" value="Inventory Report Generation"></form>
			
			<br>
			<br>
			
			<form action="/home" method="post"><input type="submit" class="btnSubmit" name="submit" value="Logg Off"></form>
			
			<br>
			<br>
			

			<!-- <tr>
				<td><button onclick="openPage('success.jsp')">Login</button></td>
				<td><button onclick="location.href ='/registration.jsp'">SignUp</button></td>
				<input onclick="window.location='userpage.jsp'"
			</tr> -->

			


	
	</center>
</div>
</div>
</body>
</body>
</html>