<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Insert Unsuccess!</title>
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
                <li><a href="Bill_Insert.jsp">Add Bill</a></li>
                <li>Bill Insert Unuccess</li>
			</ul> 
		</div>
		
		<div class = "showMessageUnsuccess">
			<center>
			
				 <img src="images/error.png" alt="Error" width="312" height="312">
				 
				 <br><br><br><br> 
				
				<h2>Error in entering the bill! Please try again!</h2>
				<br><br>
				<p>Please check if you added information correctly</p>
				<br><br>
				<h3><a href = "Bill_Insert.jsp">Try Again!</a></h3>
				<h3><a href = "BillHome.jsp">Go to home page</a></h3>
			</center>
		</div><!-- showMessageUnsuccess -->
		
		<div class = "footer clearfix">
			<p>Copyrightę2021 SHOP&DROP  Enterprises</p>

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