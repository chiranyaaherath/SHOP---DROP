package com.supplier;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteSupplierPermanenetlyServlet")
public class DeleteSupplierPermanenetlyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("sID");
		String suppliername = request.getParameter("sname");
		boolean tru = SupplierDBUtil.deleteSupplierPermanently(id);
		
		if(tru == true)
		{
			RequestDispatcher rd = request.getRequestDispatcher("SupplierSuccess.jsp");
			rd.forward(request, response);
		}
		
		else
		{
			ArrayList<Supplier> supDetails = SupplierDBUtil.getSupplierDetails(suppliername);
			request.setAttribute("supDetails", supDetails);
			
			RequestDispatcher rd = request.getRequestDispatcher("SupplierUnsuccess.jsp");
			rd.forward(request, response);
		}
	}

}
