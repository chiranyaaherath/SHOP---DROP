<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report Selection</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css"/>
	<link rel = "stylesheet" href = "Styles/SupplierPayment.css"/>
	
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
					<li><a href="ReportSelection.jsp">Generate report</a></li>
				</ul>
			</div><br><br><br>
			
			<center>
				<h2>Select month to generate report</h2>
				<fieldset class="repgen">
					<div class="homebuttons">
						
						<form method="POST" action="SupplierReport.jsp" name="repGen" onsubmit="return validate()">
							<label>Year</label>&nbsp&nbsp
							<input type="text" name="year"><br><br>
							
							<label>Select Month</label>&nbsp&nbsp
							<select name="month" class="Month">
								<option value="01">January</option>
								<option value="02">February</option>
								<option value="03">March</option>
								<option value="04">April</option>
								<option value="05">May</option>
								<option value="06">June</option>
								<option value="07">July</option>
								<option value="08">August</option>
								<option value="09">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
							</select>
							<br><br><br>
							
							<input type="submit" name="sub" value="Submit">
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