<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier payment</title>

	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css"/>
	<link rel = "stylesheet" href = "Styles/SupplierPayment.css"/>
	
	<script>
		function validate(){
			var SupplierID=document.supPay.suppID.value;
			var amount=document.supPay.amount.value;
			var date=document.supPay.date.value;
			
			if(SupplierID==""){
				alert("Supplier ID is empty");
				return false;
			}
			
			else if(amount==""){
				alert("Amount is invalid");
				return false;
			}
			
			else if(Date==""){
				alert("Date is invalid");
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
				<li><a href="SupplierPayment.jsp">Supplier payment</a></li>
			</ul>
		</div><br><br><br>
		
		<center>
			<h2>Supplier payment</h2>
			<fieldset class="pay">
				<div class="homebuttons">
					
					<form method="POST" action="supplierpayment" name="supPay" onsubmit="return validate()">
						<label>Supplier ID</label>&nbsp&nbsp
						<input type="text" name="suppID" class="SUPPLIERid" pattern="[A-Z0-9]{2}"><br><br>
						
						<label class="bf">Amount</label>&nbsp&nbsp
						<input type="number" name="amount" class="amou"><br><br>
						
						<label>Date</label>&nbsp&nbsp
						<input type="date" name="date" class="dat"><br><br>
						
						<input type="submit" name="sub" value="Submit Payment">
					</form>
				</div>
			</fieldset>
		</center><br><br><br>
		
		<div class="foot">
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