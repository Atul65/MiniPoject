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
</head>
<body style="background-color: lavender">
<center>
<form action=""registration method="post">
    <h2>Manager/Cashier Registration Form</h2>

<table>
<tr>
<td><label id="category">User Category</label>
<td><select id="category" name="category"required>
<option value="Manager">Manager</option>
<option value="Cashier">Cashier</option>
<!--<option value="Admin">Admin</option>-->
</select>
</td>
</tr>
<tr>
<td><label="FirstName">First Name</label></td>
   <td><input type="text" id="FirstName" name="firstName" required></input></td>
</tr>
<tr>
<td><label ="LastName">Last Name</label></td>
   <td><input type="text" id="LastName" name="lastName" required></input></td>
</tr>
<tr>
<td><label path="Dob">Date of Birth</label></td>
   <td><input type="date" id="Dob" name="dob" required></input></td>
</tr>
<tr>
<td><label id="Gender">Gender</label>
    <td>
<select id="category" name="gender" required>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select></td>
</tr>
<tr>
<td><label ="Contact Number">Contact Number</label></td>
<td>
<input type="tel" id="Contact Number" name="contactNo" required></input>
</td>
</tr>
<tr>
<td><label="User Id">User Id</label></td>
<td>
<input type="text" id="User Id" name="userId" required></input>
</td>
</tr>
<tr>
<td><label ="Password">Password</label></td>
<td>
<input type="password" id="Password" name="password" required></input>
</td>
</tr>

<!--<tr>
    <td>
        <label id="Secret questions">Secret questions</label>
    </td><td><select required>
        <option value="what is your favourite sport?">what is your favourite sport?</option>
        <option value="what is your lucky number?">what is your lucky number?</option>
        <option value="what is your native place?">what is your native place?</option>
    </select>
    </td>  
</tr>
<tr>
    <td>
        <label id="Answer">Answer</label>
    </td>
    <td><textarea required></textarea></td> 
</tr>-->
<tr>
<td><input type="submit" name="submit" value="Register" /></td>
<td><input type="reset" name="reset" value="Clear" /></td>
</tr>
</table>
</form>
<br>
			<br>
<form action="/home" method="post"><input type="submit" class="btnSubmit" name="submit" value="HOME"></form>
			
			
</form>
</center>
</body>
</html>