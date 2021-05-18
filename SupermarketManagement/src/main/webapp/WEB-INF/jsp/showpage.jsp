<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: lavender">
	<h1>
		<center>Welcome to Supermarket Billing</center>
	</h1>

	<form method="post" modelAttribute="billing" action="/calculateCost">
		<center>
			<table>
				<tr>
					<td><form:label path="itemType">Choose Item Type</form:label></td>
					<td><input name="itemType" type="text" id="itemType" /></td>
					
				</tr>
				<tr>
					<td><label id="item">Choose Item</label></td>
					<td><select id="item" name="item" required>
<option value="Apple">Apple</option>
<option value="Orange">Orange</option>
<option value="Banana">Banana</option>
<option value="Kiwi">Kiwi</option>
<option value="Watermelon">Watermelon</option>
</select></td>
				</tr>
				<tr>
					<td><form:label path="qty">Enter Quantity</form:label></td>
					<td><input name="qty" type="text"
							id="qty" /></td>
				</tr>
				<tr>
					<td><button type="submit" name="submit">Calculate Cost</button></td>
				</tr>

			</table>
		</center>
	</form>



</body>
</html>