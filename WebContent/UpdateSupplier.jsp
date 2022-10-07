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
			var SupplierID=document.supUp.suppID.value;
			var CompanyID=document.supUp.comID.value;
			var CompanyName=document.supUp.comName.value;
			var CompanyPhone=document.supUp.comPhone.value;
			var CompanyAddress=document.supUp.comAdd.value;
			
			if(SupplierID==""){
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
		
			<img alt="logo" src="images/shop&drop.png" width="16%" height="16%">
		</div>
	</center>
	
	<div class="navbar">
		<ul class="navigationBar">
			<li><a href="#">Home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierHome.jsp">Supplier home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierSearch.jsp">Search Supplier Details</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierDetails.jsp">Supplier Details</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="UpdateSupplier.jsp">Update Supplier</a></li>
		</ul>
	</div><br><br><br>
	<%
		String SID = request.getParameter("sid");
		String CID = request.getParameter("cid");
		String companyName = request.getParameter("comname");
		String companyPhone = request.getParameter("comphone");
		String companyAddress = request.getParameter("comadd");
	%>
	
	<center>
		<h2>Update Supplier</h2>
			<fieldset class="buttons">
				<div class="homebuttons">
					<form method="POST" action="updatesupplier" name="supUp" onsubmit="return validate()">
						<label>Supplier ID</label>&nbsp&nbsp
						<input type="text" name="suppID" value="<%=SID %>" readonly class="sID"><br><br>
						
						<label>Company ID</label>&nbsp&nbsp
						<input type="text" name="comID" value="<%=CID %>" class="cID" pattern="[A-Z0-9]{3}"><br><br>
						
						<label>Company Name</label>&nbsp&nbsp
						<input type="text" name="comName" value="<%=companyName %>" class="cNa"><br><br>
						
						<label>Company Phone</label>&nbsp&nbsp
						<input type="text" name="comPhone" value="<%=companyPhone %>" class="compho"><br><br>
						
						<label>Company Address</label>&nbsp&nbsp
						<input type="text" name="comAdd" value="<%=companyAddress %>"class="comADD"><br><br>
						
						<input type="submit" name="sub" value="Update">
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