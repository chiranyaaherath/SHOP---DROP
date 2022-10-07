package com.supplier;

public class SupplierOrder {
	private  String supplierID;
	private String supplierOrderID;
	private int quantity;
	private int amount;
	private String date;
	private String orderName;
	private String modelid;
	private String status;
	
	public SupplierOrder(String supplierOrderID, String supplierID, int quantity, int amount, String date) {
		this.supplierID = supplierID;
		this.supplierOrderID = supplierOrderID;
		this.quantity = quantity;
		this.amount = amount;
		this.date = date;
		
	}
	
	public SupplierOrder(String supplierOrderID, String supplierID, int quantity, String date,String orderName,String modelid) {
		this.supplierID = supplierID;
		this.supplierOrderID = supplierOrderID;
		this.quantity = quantity;
		this.date = date;
		this.orderName = orderName;
		this.modelid = modelid;
	}
	public SupplierOrder(String supplierOrderID, String supplierID, int quantity, String date,String orderName,String modelid,String status) {
		this.supplierID = supplierID;
		this.supplierOrderID = supplierOrderID;
		this.quantity = quantity;
		this.date = date;
		this.orderName = orderName;
		this.modelid = modelid;
		this.status=status;
	}


	public String getSupplierID() {
		return supplierID;
	}

	public String getSupplierOrderID() {
		return supplierOrderID;
	}

	public int getQuantity() {
		return quantity;
	}

	public int getAmount() {
		return amount;
	}

	public String getDate() {
		return date;
	}

	public String getOrderName() {
		return orderName;
	}

	public String getModelid() {
		return modelid;
	}
	
	public String getstatus() {
		return status;
	}
	
}
