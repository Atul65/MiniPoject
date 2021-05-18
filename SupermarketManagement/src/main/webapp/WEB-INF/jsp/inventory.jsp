<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    
        <center>
    <h2>Inventory Details</h2>
    <script language="javascript">
        var arr = new Array();
        arr[0] = new Array("-select-");
        arr[1] = new Array("Chanadal","Uraddal","Sugar","Mirchi","Salt");
        arr[2] = new Array("kajal","Lotion","Cream","Mascara","Foundation");
        arr[3] = new Array("Carrot","Potato","Tomato","Brinjal","Brocoli");
        arr[4] = new Array("Apple","Orange","Kiwi","Muskmelon","Watermelon");
        
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
        var products = [];
    var cart = [];

        function addProduct() {
            var Name = document.getElementById("Name").value;
            var Category = document.getElementById("Category").value;
            var Manufacturer = document.getElementById("Manufacturer").value;
            var Qty = document.getElementById("Quantity").value;
            var Rate= document.getElementById("Rate").value;
            var Dis= document.getElementById("Discount").value;

            var newProduct = {
                Name:null,
                Category:null,
                Manufacturer:null,
                Quantity:0.00,
                Rate:0,
                Discount:0,
            };
            newProduct.Name = Name;
            newProduct.Category = Category;
            newProduct.Manufacturer =Manufacturer;
            newProduct.Quantity = Qty;
            newProduct.Rate  = Rate;
            newProduct.Discount= Dis;

            products.push(newProduct);


            var html = "<table border='1|1' >";
            html += "<td>Name</td>";
            html += "<td>Category</td>";
            html += "<td>Manufacturer</td>";
            html += "<td>Quantity</td>";
            html += "<td>Rate</td>";
            html += "<td>Discount</td>";
            html += "<td>Action</td>";
            for (var i = 0; i < products.length; i++) {
                html += "<tr>";
                html += "<td>" + products[i].Name + "</td>";
                html += "<td>" + products[i].Category + "</td>";
                html += "<td>" + products[i].Manufacturer+ "</td>";
                html += "<td>" + products[i].Quantity + "</td>";
                html += "<td>" + products[i].Rate + "</td>";
                html += "<td>" + products[i].Discount + "</td>";

                html += "<td><button type='submit' onClick='deleteProduct(\"" + products[i].Name + "\", this);'/>Delete Item</button> &nbsp <button type='submit' onClick='addCart(\"" + products[i].Name+ "\", this);'/>Add to Inventory</button></td>";
                html += "</tr>";
            }
            html += "</table>";
            document.getElementById("demo").innerHTML = html;

            document.getElementById("resetbtn").click()
        }
        function deleteProduct(Name, e) {
            e.parentNode.parentNode.parentNode.removeChild(e.parentNode.parentNode);
            for (var i = 0; i < products.length; i++) {
                if (products[i].Name == Name) {
                    
                    products.splice(i, 1);
                }
            }
        }

        function addCart(Name) {

            for (var i = 0; i < products.length; i++) {
                if (products[i].Name == Name) {
                    var cartItem = null;
                    for (var k = 0; k < cart.length; k++) {
                        if (cart[k].product.Name == products[i].Name) {
                            cartItem = cart[k];
                            cart[k].Quantity++;
                            break;
                        }
                    }
                    if (cartItem == null) {
                        
                        var cartItem = {
                            product: products[i],
                            Quantity: products[i].Quantity
                        };
                        cart.push(cartItem);
                    }
                }
            }

            renderCartTable();

        }
        function renderCartTable() {
        var html = '';
        var ele = document.getElementById("demo2");
        ele.innerHTML = ''; 
        html += "<table id='tblCart' border='1|1'>";
        html += "<td>Name</td>";
            html += "<td>Category</td>";
            html += "<td>Manufacturer</td>";
            html += "<td>Quantity</td>";
            html += "<td>Rate</td>";
            html += "<td>Discount</td>";
            html += "<td>Action</td>";
            var note = "DETAILS SUCCESSFULLY ADDED";
        for (var i = 0; i < cart.length; i++) {
            html += "<tr>";
            html += "<td>" + cart[i].product.Name+ "</td>";
            html += "<td>" + cart[i].product.Category + "</td>";
            html += "<td>" + cart[i].product.Manufacturer+ "</td>";
            html += "<td>" + cart[i].Quantity+ "</td>";
            html += "<td>" + cart[i].product.Rate+ "</td>";
            html += "<td>" + cart[i].product.Discount+ "</td>";
          
           
            html += "<td><button type='submit' onClick='subtractQuantity(\"" + cart[i].product.Name + "\", this);'/>Subtract Quantity</button> &nbsp<button type='submit' onClick='addQuantity(\"" + cart[i].product.Name+ "\", this);'/>Add Quantity</button> &nbsp<button type='submit' onClick='removeItem(\"" + cart[i].product.Name + "\", this);'/>Remove Item</button></td>";
            html += "</tr>";

          
        }
        document.getElementById('demo3').innerHTML = note;
        html += "</table>";
        ele.innerHTML = html;
        
    }


        function subtractQuantity(Name)
        {
            
            for (var i = 0; i < cart.length; i++) {
                if (cart[i].product.Name == Name) {
                    cart[i].Quantity--;
                }

                if (cart[i].Quantity == 0) {
                    cart.splice(i,1);
                }
        
            }
            renderCartTable();
        }
        function addQuantity(Name)
        {
            
            for (var i = 0; i < cart.length; i++) {
                if (cart[i].product.Name == Name) {
                    cart[i].Quantity++;
                }  
            }
            renderCartTable();
        }
        function removeItem(Name)
        {
            
            for (var i = 0; i < cart.length; i++) {
                if (cart[i].product.Name == Name) {
                    cart.splice(i,1);
                }

            }
            renderCartTable();
        }
    </script> 
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
    <form action="/inventory" name="form" method="post" modelAttribute="Calculate Amount">
       
        <tr>
        <td><label="Item Type">Item Type</label></td>
        <td>
<select name="combo1" onchange="change(this);">
<option value="0">-Select-</option>
<option value="1">Grocery</option>
<option value="2">Cosmetics</option>
<option value="3">Vegetables</option>
<option value="4">Fruits</option>


</td>
</select></tr><br/>

    <tr>
        <td><label="Item List">Item List</label></td>
        <td><select name="combo2"></select>
        </td>
    </tr>
        <br><br>
        <table>
            <tr>
                <td>
                    <label for="Name">Product Name</label>
                </td>
                <td>
                    <input type="text"id="Name" name="itemName"  required/>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Category">Category</label>
                </td>
                <td>
                    <input type="text"id="Category" name="category"  required/>
                </td>
            </tr>
        <tr>
            <td>
                <label for="Manufacturer">Manufacturer</label>
            </td>
            <td>
                <input type="text"id="Manufacturer" name="manufacturer"  required/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="Quantity">Quantity</label>
            </td>
            <td>
                <input  type="number" id="Quantity" name="quantity" required/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="Rate">Rate</label>
            </td>
            <td>
                <input type="number" id="Rate" name="rate" required/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="Discount">Discount</label>
            </td>
            <td>
                <input type="number" id="Discount" name="discount" required/>
            </td>
        </tr>
        
       
 
  </table>
  <br>
  <input type="submit" name="submit" id="resetbtn"class="resetbtn"  value="Submit" />
  <input type="button" id="btnAddProduct" onclick="addProduct();" value="Add New Product" ><br><br>
  <a href="home"> <button class="btnSubmit">Home Page</button></a>  
  <p id="demo"></p> <br/>
  <p id="demo2"></p>
  
  <p id="demo3"></p>
    </center>
</body>
</form>
</html>