<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href = "Styles/accountsStyles.css">
<script src="JavaScriptSources/Shopscript.js"></script>
<title>Sales Representative Account</title>
<style type="text/css">
	table {
  		border-collapse: collapse;
  		width: 40%;
	}

	td {
  		text-align: center;	
	}
</style>
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
                  <li><a href="emp_login.jsp">Employee Portal</a></li>
                  <li>Sales Representative Account</li>
            </ul> 
        </div>    
            
    
        <center>
        	<h1>Welcome!</h1><br>
        	<h2>Please select one : </h2><br>
        	<div class = "tabluar"></div><!-- tabluar -->
        	<table>
        		<tr>
        			<td><img src="images/house.png" alt="customer" height = "40%" widht = "40%"></img></td>
					<td>
						<a href = "PersonalDeliveryHome.jsp">
							<input type = "button" name = "customer" value = "Personel Customer">
						</a>
					</td>
				</tr>
				
				<tr>
        			<td><img src="images/shop.png" alt="shop" height = "40%" widht = "40%"></img></td>
					<td>
						<a href = "shopHomeServlet">
							<input type = "button" name = "Shop" value = "Shop Catering">
						</a>
					</td>
				</tr>
        	</table>
        	</div><!-- tabluar -->
		</center>
    	<br><br>
    	<div class = "footer clearfix">
                <p>Copyright�2021 SHOP&DROP Enterprises</p><ul>
                    <li><a href = "#">Facebook</a></li>
                    <li><a href = "#">Twitter</a></li>
                    <li><a href = "#">Instagram</a></li>
                    <li><a href = "#">RSS feed</a></li>
                </ul>
            </div> <!-- footer -->
            
    </div><!-- wrapper -->    

 

</body>
</html>