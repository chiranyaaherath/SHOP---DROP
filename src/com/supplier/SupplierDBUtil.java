package com.supplier;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SupplierDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean Success;
	
	public static boolean supplierInsert(String suppliername, String supplierid, String companyid, String companyname, String companyphone, String companyaddress,String status) {
		boolean Success = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			status = "dealing";
			String sql = "insert into supplier values('"+supplierid+"','"+companyid+"','"+suppliername+"','"+companyname+"','"+companyaddress+"','"+companyphone+"','"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
				Success = true;
			else
				Success = false;
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return Success;
	}
	
	public static boolean insertSupplierOrder(String supplyorderid,int quantity, String supplierid, String date,String ordername,String modelid,String status) {
		boolean Success = false;
		status="no";
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into supplyorder values('"+supplyorderid+"','"+quantity+"','"+supplierid+"','"+date+"','"+ordername+"','"+modelid+"','"+status+"')";
			int rs = stmt.executeUpdate(sql);
		
			if(rs > 0)
				Success = true;
			else
				Success = false;
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return Success;
	}
	
	/*public static ArrayList<Supplier> validateSupplier(String supplierName){
		ArrayList<Supplier> supp = new ArrayList<Supplier>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from supplier where supplierID='"+supplierName+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String supID = rs.getString(1);
				String compId = rs.getString(2);
				String supName = rs.getString(3);
				String compName = rs.getString(4);
				String address = rs.getString(5);
				String phone = rs.getString(6);
				String stat = rs.getString(7);
				
				Supplier s = new Supplier(supID, compId, supName, compName, address, phone,stat);
				supp.add(s);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return supp;
	}*/
	
	public static boolean validateSupplier(String suppliername)
	{
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from shopdrop.supplier where supplierName='"+suppliername+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				Success = true;
			}
			
			else
			{
				Success = false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return Success;
	}
	
	/*public static ArrayList<SupplierOrder> validateSupplierOrder(String supplyOrderID){
		ArrayList<SupplierOrder> suppOrd = new ArrayList<SupplierOrder>();
		String sql = "select * from supplyorder where supplyorderID='"+supplyOrderID+"'";
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String supplyorderid = rs.getString(1);
				int quantity = rs.getInt(2);
				String supplierid = rs.getString(3);
				int amount = rs.getInt(4);
				String date = rs.getString(5);
				
				 SupplierOrder ord = new SupplierOrder(supplyorderid,supplierid,quantity,amount,date);
			     suppOrd.add(ord);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return suppOrd;
	}*/
	
	public static boolean validateSupplierOrder(String supplyOrderID)
	{
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from supplyorder where supplyorderID='"+supplyOrderID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				Success = true;
			}
			
			else
			{
				Success = false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return Success;
	}
	
	public static ArrayList<Supplier> getSupplierDetails(String supplierName){
		ArrayList<Supplier> supdet = new ArrayList<Supplier>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from supplier where supplierName='"+supplierName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String sid = rs.getString(1);
				String cid = rs.getString(2);
				String sname = rs.getString(3);
				String cname = rs.getString(4);
				String address = rs.getString(5);
				String phone = rs.getString(6);
				String status = rs.getString(7);
				
				Supplier sp = new Supplier(sname,sid,cid,cname,phone,address,status);
				supdet.add(sp);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return supdet;	
	}
	
	public static ArrayList<SupplierOrder> getSupplierOrderDetails(String supplierOrderID){
		ArrayList<SupplierOrder> supordet = new ArrayList<SupplierOrder>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from supplyorder where supplyorderID='"+supplierOrderID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String soid = rs.getString(1);
				int quan = rs.getInt(2);
				String sid = rs.getString(3);
				String date = rs.getString(4);
				String ordername = rs.getString(5);
				String mid = rs.getString(6);
				String status = rs.getString(7);
				
				SupplierOrder so = new SupplierOrder(soid,sid,quan,date,ordername,mid,status);
				supordet.add(so);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return supordet;	
	}
	
	public static boolean updateSupplier(String sid, String cid, String comName, String comPhone, String comAddress) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update supplier set companyID='"+cid+"',companyName='"+comName+"',companyPhone='"+comPhone+"',companyAddress='"+comAddress+"'"
							+"where supplierID='"+sid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
				isSuccess = true;
			else
				isSuccess = false;
    	}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateSupplierOrder(String sid, String soid, int quan, String ordNam) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update supplyorder set quantity='"+quan+"',supplierID='"+sid+"',orderName='"+ordNam+"'"
							+"where supplyorderID='"+soid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
				isSuccess = true;
			else 
				isSuccess = false;
				
    	}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteSupplier(String sname) {
		boolean isSuccess = false;
		String s = "not dealing";
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update supplier set status='"+s+"'" +"where supplierName='"+sname+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
				isSuccess = true;
			else 
				isSuccess = false;
				
    	}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteSupplierPermanently(String sid)
	{
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from supplier where supplierID='"+sid+"'";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0)
			{
				Success = true;
			}
			
			else
			{
				Success = false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return Success;
	}



	public static boolean insertpayment( float Amount,String Date,String SupplierID ) {
	    
	    boolean isSuccsess =false;
	    
	    try {
	        
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	         String sql="insert into supplierpayment values(0,'"+SupplierID+"','"+Amount+"','"+Date+"')";
	        int rs = stmt.executeUpdate(sql);
	        
	    System.out.println(rs);
	        
	        if(rs>0)
	        {
	            isSuccsess=true;
	        }else
	        {
	            isSuccsess=false;
	        }
	        
	    }catch (Exception e){
	       e.printStackTrace();
	    }
	    return isSuccsess;
	}
}
