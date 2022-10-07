<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Supplier Order</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css">
	<script>
		function validate(){
				var SupplierID=document.suppOrderUpp.suppID.value;
				var OrderID=document.suppOrderUpp.ordID.value;
				var Quantity=document.suppOrderUpp.quantity.value;
				var OrderName=document.suppOrderUpp.ordName.value;
				
				if(SupplierID==""){
					alert("Supplier ID is empty");
					return false;
				}
				
				else if(OrderID==""){
					alert("Order ID is empty");
					return false;
				}
				
				else if(Quantity==""){
					alert("Quantity is empty");
					return false;
				}
				
				else if(OrderName==""){
					alert("Order name is empty");
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
			<li><a href="SupplierOrderSearch.jsp">Search Supplier Order</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierOrderDetails.jsp">Supplier Order Details</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="UpdateSupplierOrder.jsp">Update Supplier Order</a></li>
		</ul>
	</div><br><br><br>
	
	<%
		String sid = request.getParameter("sid");
		String soid = request.getParameter("soid");
		String quantity = request.getParameter("quan");
		String ordername = request.getParameter("ordnam");
		
		int q=Integer.parseInt(quantity);
	%>
	
	<center>
		<h2>Update Supplier Order</h2>
			<fieldset class="buttons">
				<div class="homebuttons">
					<form method="POST" action="updatesupplierorder" name="suppOrderUpp" onsubmit="return validate()">
						<label>SupplierID</label>&nbsp&nbsp
						<input type="text" name="suppid" value="<%=sid %>" readonly class="suid"><br><br>
						
						<label>Supplier Order ID</label>&nbsp&nbsp
						<input type="text" name="ordid" value="<%=soid %>" readonly class="suoid"><br><br>
						
						<label>Quantity</label>&nbsp&nbsp
						<input type="number" name="quantity" value="<%=quantity %>" class="quantity"><br><br>
						
						<label>Order Name</label>&nbsp&nbsp
						<input type="text" name="ordname" value="<%=ordername %>" class="orderName"><br><br>
						
						<input type="submit" name="submit" value="Update">
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
</body>
</html>