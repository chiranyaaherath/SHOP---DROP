package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierRegisterServlet")
public class SupplierRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String SupName = request.getParameter("suppname");
		String SupID = request.getParameter("suppID");
		String ComID = request.getParameter("comID");
		String Comname = request.getParameter("comName");
		String Phone = request.getParameter("comPhone");
		String Address = request.getParameter("comAdd");
		String Stat = request.getParameter("stat");
		
		boolean isTrue = SupplierDBUtil.supplierInsert(SupName,SupID,ComID,Comname,Phone,Address,Stat);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SupplierSuccess.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("SupplierUnsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
