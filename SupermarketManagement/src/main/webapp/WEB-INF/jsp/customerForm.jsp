<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title></title>  
    <center>   
      <h2>Customer Details Form</h2>
      </center>
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
<center>
<body style="background-color: lavender">
<form action="/customerForm" method="post" modelAttribute="">

  
    <table>
     
              
  <tr>
    <td><label="FirstName">First Name</label></td>
       <td><input type="text" id="FirstName" name="firstName" required></input></td>
    </tr>
    <tr>
    <td><label ="LastName">Last Name</label></td>
       <td><input type="text" id="LastName" name="lastName"required></input></td>
    </tr>
    <tr>
    <td><label path="Dob">Date of Birth</label></td>
       <td><input type="date" id="Dob" name="dob"required></input></td>
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
      <td><label ="Email">Email</label></td>
      <td>
      <input type="email" id="Email" name="email" required></input>
      </td>
      </tr>
      <tr>
                <tr>
          <td><label ="UserId">UserId</label></td></td>
          <td><p><code id="output" "></code></p></td>
        </tr>
              </tr>
              <tr>
                <td><button id="generate" name="userId">Generate</button></td>
              <tr>
       
          <td><input type="submit" name="submit" value="Register" /></td>
          <td><input type="reset" name="reset" value="Clear" /></td>
        
        </tr>
  </table>
  </form>
  <br>
			<br>
			<form action="/home" method="post"><input type="submit" class="btnSubmit" name="submit" value="Home"></form>
			
			<br>
			<br>
			</center>
  </body>

<script language="javascript">
(function() {
	 function IDGenerator() {
	 
		 this.length = 8;
		 this.timestamp = +new Date;
		 
		 var _getRandomInt = function( min, max ) {
			return Math.floor( Math.random() * ( max - min + 1 ) ) + min;
		 }
		 
		 this.generate = function() {
			 var ts = this.timestamp.toString();
			 var parts = ts.split( "" ).reverse();
			 var id = "";
			 
			 for( var i = 0; i < this.length; ++i ) {
				var index = _getRandomInt( 0, parts.length - 1 );
				id += parts[index];	 
			 }
			 
			 return id;
		 }

		 
	 }
	 
	 
	 document.addEventListener( "DOMContentLoaded", function() {
		var btn = document.querySelector( "#generate" ),
			output = document.querySelector( "#output" );
			
		btn.addEventListener( "click", function() {
			var generator = new IDGenerator();
			output.innerHTML = generator.generate();
			
		}, false); 
		 
	 });
	 
	 
 })();

</script>

</html>