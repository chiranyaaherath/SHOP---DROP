<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Supplier Order</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css">
	<link rel = "stylesheet" href = "Styles/SupplierPayment.css">
	
	<script>
		function validate(){
				var SupplierID=document.suppOrderadd.suppID.value;
				var SupplyOrderID=document.suppOrderadd.suppordid.value;
				var Quantity=document.suppOrderadd.quantity.value;
				var OrderName=document.suppOrderadd.ordname.value;
				var Date=document.suppOrderadd.date.value;
				var ModelID=document.suppOrderadd.modID.value;
				
				if(SupplierID==""){
					alert("Supplier ID is empty");
					return false;
				}
				
				else if(SupplyOrderID==""){
					alert("Order ID is empty");
					return false;
				}
				
				else if(Quantity==""){
					alert("Quantity is empty");
					return false;
				}
				
				else if(OrderName==""){
					alert("Order name is empty");
					return false;
				}
				
				else if(Date==""){
					alert("Date is empty");
					return false;
				}
				
				else if(ModelID==""){
					alert("Model ID is empty");
					return false;
				}
			}
	</script>
</head>
<body>
	<div class="wrapper">
		<div class="logo">

		<center>
		
			 <img alt="logo" src="images/shop&drop.png" width="16%" height="16%" >
		</div>
	</center>
	
	<div class="navbar">
		<ul class="navigationBar">
			<li><a href="#">Home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierHome.jsp">Supplier home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="#">Add Supplier Order</a></li>
		</ul>
	</div><br><br><br>
	
	<center>
		<h2>Add Order</h2>
			<fieldset class="addorder">
				<div class="homebuttons">
					<form method="POST" action="supplyorderinsert" name="suppOrderadd" onsubmit="return validate()">
						<label>Supplier ID</label>&nbsp&nbsp
						<input type="text" name="suppID" class="SID"><br><br>
						
						<label>Model ID</label>&nbsp&nbsp
						<input type="text" name=modID class="MID"><br><br>
						
						<label>Quantity</label>&nbsp&nbsp
						<input type="number" name="quantity" class="quan" min="10"><br><br>
						
						<label>Supply Order ID</label>&nbsp&nbsp
						<input type="text" name="suppordid" class="soid"><br><br>
						
						<label>Order Name</label>&nbsp&nbsp
						<input type="text" name="ordname" class="ordNam"><br><br>
						
						<label>Date</label>&nbsp&nbsp
						<input type="date" name="date" class="date"><br><br>
						
						
						
						<input type="submit" name="submit" value="Add Order">
					</form>
				</div>
			</fieldset>
		</center>
		
		<div class="footer">
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