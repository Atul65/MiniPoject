<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
   
<center> 
<h1>View Inventory Details</h1>  

<table border="2" width="70%" cellpadding="2">  
<tr><th>Item Name</th><th>Category</th><th>Manufacturer</th><th>Quantity</th><th>Rate</th><th>Discount</th>
<th>Action</th></tr>   
    <c:forEach var="p" items="${list}">  
   <tr>  
   <td>${p.itemName}</td>
   <td>${p.category}</td>  
   <td>${p.manufacturer}</td>  
   <td>${p.quantity}</td>  
   <td>${p.rate}</td>
   <td>${p.discount}</td>
      
   <td><a href="/" action="delete">Delete</a></td> 
    
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
  <a href="home"> <button class="btnSubmit">Home Page</button></a>  
</center>