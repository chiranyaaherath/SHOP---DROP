<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Order Details</title>
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
			<li><a href="SupplierOrderSearch.jsp">Search Supplier Order</a></li>&nbsp&nbsp&nbsp&nbsp
			<li><a href="SupplierOrderDetails.jsp">Supplier Order Details</a></li>
		</ul>
	</div><br><br><br>
	
	<center>
		<table>
			<c:forEach var="supOrder" items="${supOrderDetails}">
			
				<c:set var="suporderid" value="${supOrder.supplierOrderID}"/>
				<c:set var="quantity" value="${supOrder.quantity}"/>
				<c:set var="suppid" value="${supOrder.supplierID}"/>
				<c:set var="date" value="${supOrder.date}"/>
				<c:set var="ordername" value="${supOrder.orderName}"/>
				<c:set var="modid" value="${supOrder.modelid}"/>
				<c:set var="stat" value="${supOrder.status}"/>
				
				<tr>
					<td><b>Supplier Order ID:</b></td>
					<td>${supOrder.supplierOrderID}</td>
				</tr><br>
				
				<tr>
					<td><b>Quantity:</b></td>
					<td>${supOrder.quantity}</td>
				</tr><br>
				
				<tr>
					<td><b>Supplier ID:</b></td>
					<td>${supOrder.supplierID}</td>
				</tr><br>
				
				<tr>
					<td><b>Date:</b></td>
					<td>${supOrder.date}</td>
				</tr>
				
				<tr>
					<td><b>Order Name:</b></td>
					<td>${supOrder.orderName}</td>
				</tr>
				
				<tr>
					<td><b>Model ID:</b></td>
					<td>${supOrder.modelid}</td>
				</tr>
				<tr>
					<td><b>Status:</b></td>
					<td>${supOrder.status}</td>
				
			</c:forEach>
		</table>
	</center>
	<c:url value="UpdateSupplierOrder.jsp" var="supplierUpdateOrder">
		<c:param name="sid" value="${suppid}"/>
		<c:param name="soid" value="${suporderid}"/>
		<c:param name="quan" value="${quantity}"/>
		<c:param name="ordnam" value="${ordername}"/>
	</c:url>
	
	<center>
		<a href="${supplierUpdateOrder}">
			<input type="submit" name="updateSupOrder" value="Update Supplier Order"> 
		</a>
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