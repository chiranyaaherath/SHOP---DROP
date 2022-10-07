<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Supplier</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css">
	
	
	<script>
		function validate(){
			var SupplierName=document.suppReg.suppname.value;
			var SupplierID=document.suppReg.suppID.value;
			var CompanyID=document.suppReg.comID.value;
			var CompanyName=document.suppReg.comName.value;
			var CompanyPhone=document.suppReg.comPhone.value;
			var CompanyAddress=document.suppReg.comAdd.value;
			
			if(SupplierName==""){
				alert("Supplier name is empty");
				return false;
			}
			
			else if(SupplierID==""){
				alert("Supplier ID is empty");
				return false;
			}
			
			else if(CompanyID==""){
				alert("Company ID is empty");
				return false;
			}
			
			else if(CompanyName==""){
				alert("Company Name is empty");
				return false;
			}
			
			else if(CompanyPhone==""){
				alert("Company Phone is empty");
				return false;
			}
			
			else if(CompanyAddress==""){
				alert("Company Address is empty");
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
				<li><a href="AddSupplier.jsp">Supplier registration</a></li>
			</ul>
		</div><br><br><br>
		
		<center>
			<h2>Supplier Registration</h2>
			<fieldset class="addsupp">
				<div class="homebuttons">
					
					<form method="POST" action="supplierinsert" name="suppReg" onsubmit="return validate()">
						<label>Supplier Name</label>&nbsp&nbsp
						<input type="text" name="suppname" class="sname"><br><br>
						
						<label>Supplier ID</label>&nbsp&nbsp
						<input type="text" name="suppID" class="sid" pattern="[A-Z0-9]{2}"><br><br>
						
						<label>Company ID</label>&nbsp&nbsp
						<input type="text" name="comID" class="cid" pattern="[A-Z0-9]{3}"><br><br>
						
						<label>Company Name</label>&nbsp&nbsp
						<input type="text" name="comName" class="cname"><br><br>
						
						<label>Company Phone</label>&nbsp&nbsp
						<input type="tel" name="comPhone" class="cphone" placeholder="0812345678" pattern="[0-9]{9}"><br><br>
						
						<label>Company Address</label>&nbsp&nbsp
						<input type="text" name="comAdd" class="cadd"><br><br>
						
						<input type="submit" name="sub" value="Register">
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