<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove supplier</title>
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
			<li><a href="RemoveSupplier.jsp">Remove Supplier</a></li>
		</ul>
	</div><br><br><br>
	
	<%
		String SID = request.getParameter("Sid");
		String CID = request.getParameter("Cid");
		String suppNam = request.getParameter("supnam");
		String companyName = request.getParameter("Comname");
		String companyPhone = request.getParameter("Comphone");
		String companyAddress = request.getParameter("Comadd");
		String STATUS = request.getParameter("Status");
	%>
	
	<center>
		<h2>Remove Supplier</h2>
		<fieldset class="removesupp">
			<div class="homebuttons">
	
				
					<form method="POST" action="removesupplier">
						
						<label>Supplier Name</label>&nbsp&nbsp
						<input type="text" name="suppliername" <%=suppNam %>><br><br>
						
						
						<input type="submit" name="sub" value="Remove supplier">
					</form>
				</div>
			</fieldset>
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