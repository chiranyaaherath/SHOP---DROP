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

@WebServlet("/SupplierSearchServlet")
public class SupplierSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String suppliername = request.getParameter("info");
		
		try {
			ArrayList<Supplier> supDetails= SupplierDBUtil.validateSupplier(suppliername);
			request.setAttribute("supDetails", supDetails);
	         for(Supplier o:supDetails) {
				
				
				System.out.println(o.getSupplierID());
			}
		}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher dis = request.getRequestDispatcher("SupplierDetails.jsp");
			dis.forward(request, response);
			
			
			
		}*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter pri = response.getWriter();
		response.setContentType("text/html");
		
		String suppliername = request.getParameter("info");
		boolean isTrue = SupplierDBUtil.validateSupplier(suppliername);
		
		if(isTrue == true)
		{
			ArrayList<Supplier> supDetails = SupplierDBUtil.getSupplierDetails(suppliername);
			request.setAttribute("supDetails", supDetails);
			
			RequestDispatcher rd = request.getRequestDispatcher("SupplierDetails.jsp");
			rd.forward(request, response);
		}
		
		else
		{
			pri.println("<script type='text/javascript'>");
			pri.println("alert('The entered supplier name is incorrect.');");
			pri.println("location='SupplierSearch.jsp'");
			pri.println("</script>");
		}
	}
}
