package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierUpdateServlet")
public class SupplierUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("suppID");
		String cid=request.getParameter("comID");
		String comname=request.getParameter("comName");
		String comphone=request.getParameter("comPhone");
		String comaddress=request.getParameter("comAdd");
		
	boolean isTrue = SupplierDBUtil.updateSupplier(sid,cid,comname,comphone,comaddress);
		
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
