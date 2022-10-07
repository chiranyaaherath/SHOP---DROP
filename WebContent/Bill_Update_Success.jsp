<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Update Success!</title>
<link rel = "stylesheet" href = "Styles/bill_styles.css"/>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>
<link rel = "stylesheet" href = "Styles/accountsStyles.css"/>
</head>
<body>
	<div class = "wrapper">
	
		<div class = "header">
			<center>
				<img alt="logo" src="images/shop&drop.png" width="30%" height="30%" >
			</center>
		</div>
		
		<div class  = "navigation">
			<ul class="breadcrumb">
  				<li><a href="#">Home</a></li>
                <li><a href="#">Employee Portal</a></li>
                <li><a href="adminAccount.jsp">Admin Account</a></li>
                <li><a href="BillHome.jsp">Showroom</a></li>
                <li><a href="BillSearch.jsp">Search, Delete or Edit Bills</a></li>
                <li><a href="Bill_Details.jsp">Bill Details</a></li>
                <li><a href="BillUpdate.jsp">Bill Update</a></li>
                <li>Bill Update Success</li>
			</ul> 
		</div>
		
		<div class = "showMessageSuccess">
			<center>
			
				 <img src="images/success.png" alt="success" width="312" height="312">
				 
				 <br><br><br><br> 
				
				<h1>Bill updated successfully!</h1>
				<br><br>
				<h3><a href = "BillSearch.jsp">Search and update another</a></h3>
				<h3><a href = "BillHome.jsp">Go to Bill home page</a></h3>
			</center>
		</div><!-- showMessageSuccess -->
		
		<div class = "footer clearfix">
			<p>Copyright�2021 SHOP&DROP Enterprises</p>

			<ul>
				<li><a href = "#">Facebook</a></li>
				<li><a href = "#">Twitter</a></li>
				<li><a href = "#">Instagram</a></li>
				<li><a href = "#">RSS feed</a></li>
			</ul>
		</div> <!-- footer -->
			
	</div><!-- wrapper -->
</body>
</html>