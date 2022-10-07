<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
//String connectionUrl = "jdbc:mysql://localhost:3306/kiaora?autoReconnect=true&useSSL=false";
String database = "suppliermanagement";
String userid = "root";
String password = "binura";

String year = request.getParameter("year");
String month = request.getParameter("month");
try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier report</title>
	<link rel = "stylesheet" href = "Styles/SuppliersStyles.css"/>
	<link rel = "stylesheet" href = "Styles/SupplierPayment.css"/>
	<link rel = "stylesheet" href = "Styles/SupplierReport.css"/>
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
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
					<li><a href="ReportSelection.jsp">Generate report</a></li>
				</ul>
			</div><br><br><br>
			
			<center>
			
				<h2>Monthly Supplier Payment Details Report</h2><br>
				<p style="width:50% 25%">Date&Time:<%=new Date().toString() %></p>
				<table border="1" id="Suppliereport">
            <tr>
                <th>Payment ID</th>
                <th>Supplier ID</th> 
                <th>Total amount paid to a supplier</th>
                <th>Date</th>
                
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "Select paymentID,supplierID,sum(Amount),Date from suppliermanagement.supplierpayment where Date like'"+year+"-"+month+"%' group by supplierID order by Date";
            
              
           
                resultSet = statement.executeQuery(sql);
               
                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("paymentID")%> </td>
                <td><%=resultSet.getString("supplierID")%> </td>
                <td><%=resultSet.getString("sum(Amount)")%> </td>
                <td><%=resultSet.getString("Date") %></td>
            </tr>
         
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
        </table>
        <br><br>
 
    </center>
        
        
        </div>
           </div>
    <center><button onclick="print()" class="report"type="submit" name="submit"
                       value="Submit"><b>Download Supplier Report as PDF</b></button></center><br><br>
						
					</div>
			
				</center><br><br><br>
			
			<div class="ft">
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