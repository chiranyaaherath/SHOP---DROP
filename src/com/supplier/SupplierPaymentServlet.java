package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierPaymentServlet")
public class SupplierPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String suppid = request.getParameter("suppID");
			String Date = request.getParameter("date");
			String Amount = request.getParameter("amount");
			
			float amou = Float.parseFloat(Amount);
			
			boolean isTrue = SupplierDBUtil.insertpayment(amou,Date,suppid);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("SupplierSuccess.jsp");
				dis.forward(request, response);
			}
			
			else {
				RequestDispatcher dis = request.getRequestDispatcher("SupplierUnsuccess.jsp");
				dis.forward(request, response);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
	
	}
	
}
