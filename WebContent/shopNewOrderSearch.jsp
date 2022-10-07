<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  
<title>New Order</title>
</head>
<body>

	<div class = "wrapper">
	
		<div class = "header">
			<center>
				<img alt="logo" src="images/shop&drop.png" width="30%" height="30%" >
			</center>kiaora_log
		</div>
		
		<div class  = "navigation">
			<ul class="breadcrumb">
  				<li><a href="#">Home</a></li>
  				 <li><a href="#">Employee Portal</a></li>
  				<li><a href="adminAccount.jsp">Account</a></li>
  				<li><a href="shopHomeServlet">Shop Catering</a></li>
  				<li>New Order</li>
			</ul> 
		</div>	
			
		
		
		<!-- Search Model to place a new order -->
	
		<center>
			
		
		<form method = "post" id ="formSubmit" action = "searchModel" style="margin-bottom:11%;margin-top:10%;">
		
			<div class="shopform">	
			
				<h1>Search By Model</h1>
				<br>
				
				<div name= "credential_error" class = "credential_error" align = "center">${credential_error} </div>
				<br>
				
				<input type = "text"  class="inputbox2"  style="width:40%;" placeholder="Enter Model ID"   name="ModelID" id="ModelID" required>
				
				<button type="submit" class="btn1"  id="submitbtn" value="Submit"  name="submit" >Search</button>
				
				<table>
				<tr><td>
				<div class="error-box" id = "ModelID_error" ></div>
				</td></tr>
				</table>
				<br>
				<br>		
		
			</div>
		</form>	
			
		
		</center>
	
		
			
			
			
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
	
	<!-- Form Validation -->
	<script type="text/javascript">
		
		$(function() {

	         $("#ModelID_error").hide();
	         
	         var error_ModelID = false;
	         
	         $("#ModelID").focusout(function(){
	             check_ModelID();
	          });
	         
	         
	         function check_ModelID() {
	             var pattern = /^[a-zA-Z0-9]/;
	             var ModelID = $("#ModelID").val();
	             if (pattern.test(ModelID) && ModelID !== '') {
	                $("#ModelID_error").hide();
	                $("#ModelID").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#ModelID_error").html("Enter a Correct Model ID");
	                $("#ModelID_error").show();
	                $("#ModelID").css("border-bottom","2px solid #F90A0A");
	                error_ModelID = true;
	             }
	          }
	         
	         
	         $("#formSubmit").submit(function() {
	        	 
	        	 error_ModelID = false;
	        	 
	        	 check_ModelID();
	        	 
	        	 if (error_ModelID === false ) {
	                 //alert("Submission is Successfull");
	                 return true;
	              } else {
	                 alert("Please Fill the required fields Correctly");
	                 return false;
	              }
	         
	         });
	         
		  });
		   </script>	

</body>
</html>