package com.Repair;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import DBConnections.DBConnect;



public class RepairCustomerDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static boolean insertrepairCustomer(String name,String nic, String AddressLine, String street, String city,int phoneNo) {
		
		boolean isSuccess = false;
		
		
		
		   try {
			  
			   //System.out.print("error4");
			   //DB connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
							
				String sql = "insert into repcustomer values(0,'"+name+"' ,'"+nic+"', '"+AddressLine+"', '"+street+"', '"+city+"', '"+phoneNo+"')";
				int rs = stmt.executeUpdate(sql);
				 //System.out.print("error5");
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false; 
				}
				
			}catch(Exception e) {
				e.printStackTrace();
				//System.out.print("error");
			}
			
			
			
			return isSuccess;
			
		}


	public static boolean insertrepairitem(String cusID,String ritemName, String warranty_status, String damageDescription,
			double amount,String returningDate) 
	{
		boolean isSuccess = false;
		
		 try {
			  
			   System.out.print("error4");
			   //DB connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
							
				String sql = "insert into repairitem values('"+cusID+"',0,'"+ritemName+"', '"+warranty_status+"', '"+damageDescription+"', '"+amount+"','"+returningDate+"')";
				int rs = stmt.executeUpdate(sql);
				 //System.out.print("error5");
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false; 
				}
				
			}catch(Exception e) {
				e.printStackTrace();
				//System.out.print("error");
			}
			
			
			
			return isSuccess;
			
		}


	public static boolean repaircustomerUpdate(String name, String nic, String AddressLine, String street,
			String city, int phone) {
		
		boolean isSuccess = false;
		System.out.print("error up");
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//update query
			String sql = "UPDATE repcustomer set name='"+name+"',AdressLine='"+AddressLine+"',street='"+street+"',city='"+city+"',phoneNo='"+phone+"' WHERE nic='"+nic+"'";
			//execute query
			int rs = stmt.executeUpdate(sql);
			System.out.print("error ups");
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}


	public static boolean itemUpdate(String cusID,String ritemName, String warranty_status, String damageDescription,
			String amount, String returningDate) {
		boolean isSuccess = false;
		System.out.print("error up");
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//update query
			String sql = "UPDATE repairitem set ritemName='"+ritemName+"',warranty_status='"+warranty_status+"',damageDescription='"+damageDescription+"',amount='"+amount+"',returningDate='"+returningDate+"' WHERE ritemName='"+ritemName+"'";
			//execute query
			int rs = stmt.executeUpdate(sql);
			System.out.print("error ups");
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static List<RepairItem> searchItem(String cusID){
		
		ArrayList<RepairItem> item = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="select * from repairitem where cusID='"+cusID+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next());
			{
				int rItemNo=rs.getInt(2);
				String ritemName =rs.getString(3);
				String warranty_status =rs.getString(4);
				String damageDescription =rs.getString(5);
				String amount =rs.getString(6);
				String returningDate1 =rs.getString(7);
				int cusID1=rs.getInt(1);
				
			RepairItem r = new RepairItem(cusID1,rItemNo,ritemName,warranty_status,damageDescription,amount, returningDate1);
			item.add(r);
				
				
				
				
				
			}
			
			
		}
		
		catch(Exception e){
			
			e.printStackTrace();
			
			
			
		}
		return item;
	}


	public static List<RepairCustomer> searchCustomer(String nic){
		ArrayList<RepairCustomer> cus= new ArrayList<>();
		
		

		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="select * from repcustomer where nic='"+nic+"'";
			 rs = stmt.executeQuery(sql);
			 System.out.print("error ups");
			
			if(rs.next());
			{
				int cusID=rs.getInt(1);
				String name =rs.getString(2);
				String nic1 =rs.getString(3);
				String addressLine =rs.getString(4);
				String street=rs.getString(5);
				String city=rs.getString(6);
				int Teleno=rs.getInt(7);
				
			RepairCustomer c = new RepairCustomer(cusID,name,nic1,addressLine,street,city,Teleno);
			cus.add(c);
			}
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	public static List<RepairCustomer> getCustomer(String nic){
		
	System.out.println("abcdef"+nic);	
		ArrayList<RepairCustomer> cus= new ArrayList<>();
		
		

		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="select * from repcustomer where nic='"+nic+"'";
			 rs = stmt.executeQuery(sql);
			 System.out.print("error ups");
			
			if(rs.next());
			{
				int cusID=rs.getInt(1);
				String name =rs.getString(2);
				String nic1 =rs.getString(3);
				String addressLine =rs.getString(4);
				String street=rs.getString(5);
				String city=rs.getString(6);
				int Teleno=rs.getInt(7);
				
			RepairCustomer c = new RepairCustomer(cusID,name,nic1,addressLine,street,city,Teleno);
			cus.add(c);
			}
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	public static boolean customerDelete(String nic) {
		
		boolean isSuccess = false;
		System.out.print("error up");
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//update query
			String sql = "delete from repcustomer where nic='"+nic+"'";
			//execute query
			int rs = stmt.executeUpdate(sql);
			System.out.print("error ups");
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

public static List<RepairItem> getItem(String cusID){
		
		
		ArrayList<RepairItem> item= new ArrayList<>();
		
		

		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="select * from repairitem where cusID='"+cusID+"'";
			 rs = stmt.executeQuery(sql);
			 System.out.print("error ups");
			

				if(rs.next());
				{
					int rItemNo=rs.getInt(1);
					String ritemName =rs.getString(2);
					String warranty_status =rs.getString(3);
					String damageDescription =rs.getString(4);
					String amount =rs.getString(5);
					String returningDate1 =rs.getString(6);
					int cusID1=rs.getInt(7);
					
				RepairItem r = new RepairItem(cusID1,rItemNo,ritemName,warranty_status,damageDescription,amount, returningDate1);
				item.add(r);
					
					
					
					
					
				}
				
				
			}
			
			catch(Exception e){
				
				e.printStackTrace();
				
				
				
			}
			return item;
		}
public static boolean itemDelete(String cusID) {
	
	boolean isSuccess = false;
	System.out.print("error up");
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		//update query
		String sql = "delete from repairitem where cusID='"+cusID+"'";
		//execute query
		int rs = stmt.executeUpdate(sql);
		System.out.print("error ups");
		
		if(rs>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}



	
	
public static boolean insertRepairProfit(float tot,float actu, String month)  {
	boolean isSuccess = false;
	//System.out.print("+kavee+");
	//int phone11=776355783;
	
	
	   try {
		   float amount1;
		   
		   if(tot>actu)
		   {
			
			   amount1=tot-actu;
		   
		  
		   System.out.print("error4");
		   //DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
						
			String sql = "insert into profit(profitID,income_category,amount,month)values(0, 'repair' ,'"+amount1+"','"+month+"')";
			int rs = stmt.executeUpdate(sql);
			 //System.out.print("error5");
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false; 
			}
		   }	
		}catch(Exception e) {
			e.printStackTrace();
			//System.out.print("error");
		}
		
		
		
		return isSuccess;
		
	}
	
}		
		

		
	

	
