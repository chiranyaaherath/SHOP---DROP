package com.supplier;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierOrderSearchServlet")
public class SupplierOrderSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			PrintWriter pri = response.getWriter();
			response.setContentType("text/html");
			
			String supplierorderid = request.getParameter("order");
			boolean isTrue = SupplierDBUtil.validateSupplierOrder(supplierorderid);
			
			if(isTrue == true)
			{
				ArrayList<SupplierOrder> supOrderDetails = SupplierDBUtil.getSupplierOrderDetails(supplierorderid);
				request.setAttribute("supOrderDetails", supOrderDetails);
				
				
				RequestDispatcher rd = request.getRequestDispatcher("SupplierOrderDetails.jsp");
				rd.forward(request, response);
			}
			
			else
			{
				pri.println("<script type='text/javascript'>");
				pri.println("alert('The entered supplier ID is incorrect.');");
				pri.println("location='SupplierOrderSearch.jsp'");
				pri.println("</script>");
			}
		}
	}

}
