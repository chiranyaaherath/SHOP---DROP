package com.supplier;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddSupplierOrderServlet")
public class AddSupplierOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String suppid = request.getParameter("suppID");
			String supplyorderid = request.getParameter("suppordid");
			String quantity = request.getParameter("quantity");
			String date = request.getParameter("date");
			String ordername = request.getParameter("ordname");
			String modelid = request.getParameter("modID");
			String Stats = request.getParameter("status");
			
			int quan = Integer.parseInt(quantity);
			
			boolean isTrue = SupplierDBUtil.insertSupplierOrder(supplyorderid,quan,suppid,date,ordername,modelid,Stats);
			
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
