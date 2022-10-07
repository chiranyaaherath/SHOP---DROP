package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierDeleteServlet")
public class SupplierRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sname=request.getParameter("suppliername");
		System.out.println(sname);
		
	boolean isTrue = SupplierDBUtil.deleteSupplier(sname);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("SupplierSuccess.jsp");
			rd.forward(request, response);
		}
		
		else {
			RequestDispatcher rd = request.getRequestDispatcher("SupplierUnsuccess.jsp");
			rd.forward(request, response);
		}
	}

}
