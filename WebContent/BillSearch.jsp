<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search, Delete or Edit Bills</title>
<link rel = "stylesheet" href = "Styles/bill_styles.css"/>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>
<link rel = "stylesheet" href = "Styles/accountsStyles.css"/>
<style type="text/css">
	table {
  		border-collapse: collapse;
  		width: 100%;
	}

	th, td {
  		text-align: inherit;
  		padding: 2px;
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
                <li><a href="#">Employee Portal</a></li>
                <li><a href="adminAccount.jsp">Admin Account</a></li>
                <li><a href="BillHome.jsp">Showroom</a></li>
                <li>Search, Delete or Edit Bills</li>
			</ul> 
		</div>
		
		<div class = "billSearch_Update_Deleteform">
			<center>
				<form action="Bill_SearchServlet" method="post" name = "billSearch ">
					<fieldset>
					<h1>Search for Bill </h1>
	                	<!-- Legend tag using -->
	                	<table>
	                		<div class = "billformInner">
	                		<tr>
	                		<td>Month : </td><td><select name="month" id="month" name = "month">
								  			<option name="January" value="January">January</option>
  											<option name="February" value="February">February</option>
  											<option name="March" value="March">March</option>
  											<option name="April" value="April">April</option>
											<option name="May" value="May">May</option>
  											<option name="June" value="June">June</option>
  											<option name="July" value="July">July</option>
  											<option name="August" value="August">August</option>
											<option name="September" value="September">September</option>
  											<option name="October" value="October">October</option>
  											<option name="November" value="November">November</option>
  											<option name="December" value="December">December</option>
										</select>
								</td>
								<td>
	                			<label>Utility Type:</label></td>
			                	<td><select name="utility_type" id="utility_type">
								  <option value="Water">Water</option>
								  <option value="Electricity">Electricity</option>
								  <option value="Internet">Internet</option>
								</select></td>
								<td>
								<input type="submit" class="button" value="Search Bill" name = "SearchBill">
			                	</td>
			                </tr>
			                </table>
			                <hr>
			                	<!-- Search bar ends -->
			                	<h1>Update or Delete Bill </h1>
			                	<table><tr>
	                			<td><label>Bill ID : </label></td>
	                			<td><input type = "text" id = "bill_code" name = "bill_code" disabled="disabled"></td>
	                			</tr>
	                			<tr>
	                			<td><label>Utility Type:</label></td>
	                			<td>
			                	<select id="utility_type" disabled="disabled">
								  <option value="Water">Water</option>
								  <option value="Electricity">Electricity</option>
								  <option value="Internet">Internet</option>
								</select></td>
			                	</tr>
			                	<tr>
			                	<td><label>Total amount:</label></td>
			                	<td><input type="number" id="amount" name="amount" placeholder = "0.0"></td>
			                	</tr>
			                	</tr>
			                	<td><label>Status: </label></td>
			                	</tr>
			                	<tr>
			                	<td><label>Paid: </label><input type="radio" id="status" name="status" value = "Paid"></td>
				                <td><label>Not Paid: </label><input type="radio" id="status" name="status" value = "Not Paid"></td>
			                	</tr>
			                	<tr>
			                	<td>Date : </td><td><input type="number" id="date" name="date"></td></tr>
			                	<tr>
			                	<td>Month : </td>
			                		<td><select id="month" >
								  			<option name="January" value="January">January</option>
  											<option name="February" value="February">February</option>
  											<option name="March" value="March">March</option>
  											<option name="April" value="April">April</option>
											<option name="May" value="May">May</option>
  											<option name="June" value="June">June</option>
  											<option name="July" value="July">July</option>
  											<option name="August" value="August">August</option>
											<option name="September" value="September">September</option>
  											<option name="October" value="October">October</option>
  											<option name="November" value="November">November</option>
  											<option name="December" value="December">December</option>
										</select></td>
			                	</tr>
			                	<tr>
			                	<td><label>Due Date:</label></td>
			                	<td><input type="date" id="dueDate" name="dueDate"></td>
			                	</tr>
			                	</table>
			                	<tr>
			                	<td><input type="submit" class="button" value="Update Bill" name = "UpdateBill"></td>
		           				<td><input type="submit" class="button" value="Delete Bill" name = "DeleteBill" style="background-color:red"></td>
	            				</tr>
	            		</div><!-- billformInner -->
	            	</fieldset>
				</form>
			</center>
		</div><!-- Bill insert form -->
			
		<div class = "footer clearfix">
			<p>Copyright�2021 SHOP&DROP  Enterprises</p>

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