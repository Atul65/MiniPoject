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
<h1>View Registration Requests</h1>  

<table border="2" width="70%" cellpadding="2">  
<tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Date of Birth</th><th>Gender</th><th>Contact No</th><th>User ID</th>
<th>Password</th><th>Category</th><th>Status</th><th>Approve Request</th><th>Reject/Delete Request</th></tr>   
    <c:forEach var="p" items="${list}">  
   <tr>  
   <td>${p.id}</td>
   <td>${p.firstName}</td>  
   <td>${p.lastName}</td>  
   <td>${p.dob}</td>  
   <td>${p.gender}</td>
   <td>${p.contactNo}</td>
   <td>${p.userId}</td>
   <td>${p.password}</td> 
   <td>${p.category}</td> 
   <td>${p.status}</td>
   <td><a href="/editemp">Approve</a></td>   
   <td><a href="deleteemp/${p.status}">Reject/Delete</a></td> 
    
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
  <a href="home"> <button class="btnSubmit">Home Page</button></a>  
</center>