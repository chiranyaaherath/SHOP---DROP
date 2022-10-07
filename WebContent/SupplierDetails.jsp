<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Details</title>
		<link rel = "stylesheet" href = "Styles/SuppliersStyles.css">
	
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
			<li><a href="SupplierSearch.jsp"> Search Supplier Details</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierDetails.jsp">Supplier Details</a></li>&nbsp&nbsp&nbsp&nbsp
			
		</ul>
	</div><br><br><br>
	
	
		<table>
			<c:forEach var="sup" items="${supDetails}">
			
				<c:set var="supid" value="${sup.supplierID}"/>
				<c:set var="comid" value="${sup.companyID}"/>
				<c:set var="supname" value="${sup.supplierName}"/>
				<c:set var="comname" value="${sup.companyName}"/>
				<c:set var="comphone" value="${sup.phone}"/>
				<c:set var="comaddress" value="${sup.address}"/>
				<c:set var="stat" value="${sup.status}"/>
				
				<tr>
					<td><b>Supplier ID:</b></td>
					<td>${sup.supplierID}</td>
				</tr><br>
				
				<tr>
					<td><b>Company ID:</b></td>
					<td>${sup.companyID}</td>
				</tr><br>
				
				<tr>
					<td><b>Supplier Name:</b></td>
					<td>${sup.supplierName}</td>
				</tr><br>
				
				<tr>
					<td><b>Company Name:</b></td>
					<td>${sup.companyName}</td>
				</tr><br>
				
				<tr>
					<td><b>Company Address:</b></td>
					<td>${sup.address}</td>
				</tr><br>
				
				<tr>
					<td><b>Company Phone:</b></td>
					<td>${sup.phone}</td>
				</tr>
				
				<tr>
					<td><b>Status:</b></td>
					<td>${sup.status}</td>
				</tr>
			</c:forEach>
		</table>
	
	
	<c:url value="UpdateSupplier.jsp" var="supplierUpdate">
		<c:param name="sid" value="${supid}"/>
		<c:param name="cid" value="${comid}"/>
		<c:param name="comname" value="${comname}"/>
		<c:param name="comphone" value="${comphone}"/>
		<c:param name="comadd" value="${comaddress}"/>
	</c:url>
	

		<a href="${supplierUpdate}">
			<input type="submit" name="updateSup" value="Update Supplier" class="us">&nbsp&nbsp 
		</a>
	
	
	<c:url value="RemoveSupplier.jsp" var="supplierremove">
		<c:param name="Sid" value="${supid}"/>
		<c:param name="Cid" value="${comid}"/>
		<c:param name="supnam" value="${supname}"/>
		<c:param name="Comname" value="${comname}"/>
		<c:param name="Comphone" value="${comphone}"/>
		<c:param name="Comadd" value="${comaddress}"/>
		<c:param name="Status" value="${stat}"/>
	</c:url>
	
	
	<a href="${supplierremove}">
		<input type="submit" name="supRemove" value="Remove Supplier">
	</a>
	
	<c:url value="DeleteSupplierPermanently.jsp" var="deletesupperm">
		<c:param name="sID" value="${supid}"/>
		<c:param name="cID" value="${comid}"/>
		<c:param name="supNAM" value="${supname}"/>
		<c:param name="comNAME" value="${comname}"/>
		<c:param name="comPHONE" value="${comphone}"/>
		<c:param name="comADD" value="${comaddress}"/>
		<c:param name="STATUS" value="${stat}"/>
	</c:url>
		
	<a href="${deletesupperm}">
		<input type="submit" name="supDeletePermanenet" value="Delete Supplier Permanently">
	</a>
	
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