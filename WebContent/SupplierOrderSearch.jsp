<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Order Search</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css">
	<script>
	
	function validateForm(){
        
		var details = document.supplierorder.order.value;
       
	    if(details==""){
	    	alert("Supplier order ID is empty");
	    	return false;
   		}
       
   }
	
		
	</script>
</head>
<body>
	<div class="wrapper">
		<div class="logo">
		<center>
		
			<img alt="logo" src="images/shop&drop.png" width="16%" height="16%">
		</div>
	</center>
	
	<div class="navbar">
		<ul class="navigationBar">
			<li><a href="#">Home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierHome.jsp">Supplier home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierOrderSearch.jsp">Search Supplier Order</a></li>
		</ul>
	</div><br><br><br><br><br><br><br>
	
	<center>
		<div class="homebutton">
				<form action="supplierordersearch" method="POST" name="supplierorder">
					<label>Search supplier order by Supplier Order ID</label>
					<input type="text" name="order">
					<input type="submit" name="Submit" value="Search" onclick="return validateForm()"> 
				</form>
			</div>
		
	</center>
	
	<div class="foo">
			<p>Copyright© SHOP & DROP ENTERPRISE</p>
			
			
			<ul>
				<li><a href="">Facebook</a></li>&nbsp&nbsp
				<li><a href="">Twitter</a></li>&nbsp&nbsp
				<li><a href="">Instagram</a></li>&nbsp&nbsp
				<li><a href="#">Google+</a></li>&nbsp&nbsp
			</ul>
		</div>
	</div>
</body>
</html>