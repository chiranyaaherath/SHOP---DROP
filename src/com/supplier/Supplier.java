package com.supplier;

public class Supplier {
	private String supplierName;
	private String supplierID;
	private String companyID;
	private String companyName;
	private String phone;
	private String address;
	private String status;
	
	/*public Supplier(String SupplierName, String SupplierID, String CompanyID, String CompanyName, String Phone, String Address,String Status) {
		this.SupplierName = SupplierName;
		this.SupplierID = SupplierID;
		this.CompanyID = CompanyID;
		this.CompanyName = CompanyName;
		this.Phone = Phone;
		this.Address = Address;
		this.Status = Status;
	}*/
	
	public Supplier(String supplierName, String supplierID, String companyID, String companyName, String phone, String address,String status) {
		this.supplierName = supplierName;
		this.supplierID = supplierID;
		this.companyID = companyID;
		this.companyName = companyName;
		this.phone = phone;
		this.address = address;
		this.status = status;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public String getSupplierID() {
		return supplierID;
	}

	public String getCompanyID() {
		return companyID;
	}

	public String getCompanyName() {
		return companyName;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}
	
	public String getStatus() {
		return status;
	}
	
	
}