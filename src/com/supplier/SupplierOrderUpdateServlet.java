package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierOrderUpdateServlet")
public class SupplierOrderUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("suppid");
		String soid=request.getParameter("ordid");
		String quantity=request.getParameter("quantity");
		String ordername=request.getParameter("ordname");
		
		/*System.out.println(request.getParameter("sid"));
		System.out.println(request.getParameter("soid"));
		System.out.println(request.getParameter("quantity"));
		System.out.println(request.getParameter("ordername"));*/
		
		
		int quan=Integer.parseInt(quantity);
		
		boolean isTrue = SupplierDBUtil.updateSupplierOrder(sid,soid,quan,ordername);
		
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
