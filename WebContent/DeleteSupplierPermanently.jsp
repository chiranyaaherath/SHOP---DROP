<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Supplier Permanently</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css">
</head>
<body>

	<div class="wrapper">
		<div class="logo">
		<center>
		
			<img alt="logo" src="images/shop&drop.png" width="16%" height="16%" >
		</div><br>
	</center>
	
	<div class="navbar">
		<ul class="navigationBar">
			<li><a href="#">Home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierHome.jsp">Supplier home</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierSearch.jsp">Search Supplier Details</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierDetails.jsp">Supplier Details</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="DeleteSupplierPermanently.jsp">Delete Supplier Permanently</a></li>
		</ul>
	</div><br><br><br>

	<% 
		String sid = request.getParameter("sID");
		String cid = request.getParameter("cID");
		String suppliername = request.getParameter("supNAM");
		String companyname = request.getParameter("comNAME");
		String companyphone = request.getParameter("comPHONE");
		String companyaddress = request.getParameter("comADD");
		String status = request.getParameter("STATUS");
	%>
	
	<center>
	<h2>Deleting Supplier Permanenetly</h2>
		<fieldset class="removesuppperm">
			<div class="homebuttons">
				<form method="POST" action="deletesupplierpermanently">
					<label>Supplier Name</label>&nbsp&nbsp
					<input type="text" name="sname" value="<%=suppliername %>" readonly class="suppliername"><br><br>
					
					<label>Supplier ID</label>&nbsp&nbsp
					<input type="text" name="sID" value="<%=sid %>" readonly class="supplierid"><br><br>
					
					<label>Company ID</label>&nbsp&nbsp
					<input type="text" name="cID" value="<%=cid %>" readonly class="companyid"><br><br>
					
					<label>Company Name</label>&nbsp&nbsp
					<input type="text" name="cName" value="<%=companyname %>" readonly class="companyname"><br><br>
					
					<label>Company Phone</label>&nbsp&nbsp
					<input type="text" name="cPhone" id="pho" value="<%=companyphone %>" readonly class="companyphone"><br><br>
					
					<label>Company Address</label>&nbsp&nbsp
					<input type="text" name="cAdd" value="<%=companyaddress %>" readonly class="companyaddress"><br><br>
					
					<label>Status</label>&nbsp&nbsp
					<input type="text" name="sta" value="<%=status %>" readonly class="stat"><br><br>
					
					<input type="submit" name="sub" value="Delete Supplier Permanently">
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