<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>  -->
<style>
.login-form {
    width: 340px;
    margin: 50px auto;
  	font-size: 15px;
}
.login-form form {
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-control, .btn {
    min-height: 38px;
    border-radius: 2px;
}
.btn {        
    font-size: 15px;
    font-weight: bold;
}
</style>
</head>
<body style="background-color: lavender">

<div class="login-form">
    <form action="" method="post" onsubmit="return validateForm()">
        <h2 class="text-center">Login for Admin</h2>       
        <div class="form-group">
            <input type="text" class="form-control" placeholder="UserID" name="userId" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" name="password" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>
        <div class="clearfix">
            <label class="float-left form-check-label"><a href="/forgotUserId" class="float-right">Forgot UserID?</a></label>
            <a href="/forgotPassword" class="float-right">Forgot Password?</a>
        </div>        
    </form>
</div>
 
</body>
<script type="text/javascript">
function validateForm() {
  var x = document.forms["myForm"]["userID"].value;
  var y = document.forms["myForm"]["pass"].value;
  if (x == "" && y == ""){
  alert("Please Enter User Id & Password");
    document.forms["myForm"]["userID"].style.borderColor = "red";
    document.forms["myForm"]["pass"].style.borderColor = "red";
    return false;
  }
   if (x == "") {
    alert("Please Enter User Id");
    document.forms["myForm"]["userID"].style.borderColor = "red";
    return false;
  }
   if (y == "") {
    alert("Please Enter Password");
    document.forms["myForm"]["userID"].style.borderColor = "black";
    document.forms["myForm"]["pass"].style.borderColor = "red";
    return false;
  }
}
	</script>
</html>