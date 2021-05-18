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
		<center>Welcome To The Supermarket Services</center>
	</h1>

	<center>
			
				<!--<tr>
				 <td>Choose Role:</td>
				<td><select id="role" name="Select Role">
						<option value="Manager">Manager</option>
						<option value="Cashier">Cashier</option>
				</select><br>
				</tr> -->

			<form action="/admin" method="post"><input type="submit" class="btnSubmit" name="submit" value="Admin Login"></form>
			
			<br>
			<br>
			
			<form action="/managerCashier" method="post"><input type="submit" class="btnSubmit" name="submit" value="Manager/Cashier Login"></form>
			
			<br>
			<br>
			
			<form action="/registration" method="get"><input type="submit" class="btnSubmit" name="submit" value="Manager/Cashier SignUp"></form>
			

			<!-- <tr>
				<td><button onclick="openPage('success.jsp')">Login</button></td>
				<td><button onclick="location.href ='/registration.jsp'">SignUp</button></td>
				<input onclick="window.location='userpage.jsp'"
			</tr> -->

			


	
	</center>
</div>
<ul class="bg-bubbles"></ul>
</div>
</body>
</body>
</html>