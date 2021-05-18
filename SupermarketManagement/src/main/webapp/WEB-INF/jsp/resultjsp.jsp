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
<body bgcolor="lavender">
<center>
<h1>Your total cost is Rs.${cost }/-</h1>
<h3>Thanks For Shopping in SUPERMARKET</h3>
<br>
<br>		
<form action="/home" method="post"><input type="submit" class="btnSubmit" name="submit" value="Home"></form>
</center>
</body>
</html>