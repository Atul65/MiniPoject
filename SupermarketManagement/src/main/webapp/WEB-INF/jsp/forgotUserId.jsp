<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body style="background-color: #E6E6FA; color: black; font-size: 20px;">
<center>
	<div class="container">
		<table class="table">
			<tr>
				<td><label for="secreteQuestion">Secrete Questions: </label></td>
				<td><select name="secreteQuestion" id="secreteQuestion">
						<option value="q1">In which city were you born?</option>
						<option value="q2">What was your father's middle name?</option>
						<option value="q3">In which city or town was your first
							job?</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="email">Email</label></td>
				<td><input type="email" id="email" required></td>
			</tr>
			<tr>
				<td><label for="mobileNumber">Mobile Number</label></td>
				<td><input type="text" name="Mobile Number" id="mobileNumber"
					pattern="[7-9]{1}[0-9]{9}" required></td>
			</tr>
			<tr>
				<td><input type="submit" id="submit" value="Submit"></td>
				<td><input type="reset" id="reset" value="Clear"></td>
			</tr>
		</table>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
	</center>
</body>
</html>