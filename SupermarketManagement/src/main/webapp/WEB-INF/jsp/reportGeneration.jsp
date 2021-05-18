<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><style>
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
      <h2>Inventory Report</h2>
<script language="javascript">
var arr = new Array();
arr[0] = new Array("-select-");
arr[1] = new Array("Daily","Weekly","Monthly");
arr[2] = new Array("category","Grocery","Cosmetics","Fruits","Vegetables");
arr[3] = new Array();


function change(combo1)
{
var comboValue = combo1.value;
document.forms["form"].elements["combo2"].options.length=0;
for (var i=0;i<arr[comboValue].length;i++)
{
var option = document.createElement("option");
option.setAttribute('value',i+1);
option.innerHTML = arr[comboValue][i];
document.forms["form"].elements["combo2"].appendChild(option);
}
}
</script>
<form name="form" action="/home" method="post">
    <table>
        <tr>
        <td><label="category">Category</label></td>
        <td>
<select name="combo1" onchange="change(this);">
<option value="0">-Select-</option>
<option value="1">Sales</option>
<option value="2">Stocks</option>
<option value="3">Arrangement</option>



</td>
</select></tr><br/>

    <tr>
        <td><label="List">List</label></td>
        <td><select name="combo2"></select>
        </td>
    </tr>
    <br>
   
      
      <tr>
        <td><input type="submit" name="submit" value="submit" /></td>
        <td><input type="reset" name="reset" value="clear" /></td>
        </tr>
  </tr>
  </table>
  <br>
			<br>
  <form action="/home" method="post"><input type="submit" class="btnSubmit" name="submit" value="Home"></form>
			
			
    </center>

</form>
</html>