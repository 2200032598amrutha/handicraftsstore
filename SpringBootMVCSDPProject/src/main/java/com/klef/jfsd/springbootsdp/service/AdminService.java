package com.klef.jfsd.springbootsdp.service;

import java.util.List;

import com.klef.jfsd.springbootsdp.model.Admin;
import com.klef.jfsd.springbootsdp.model.Customer;
import com.klef.jfsd.springbootsdp.model.Product;

public interface AdminService {
	public List<Customer> viewAllCustomers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long customercount();
	public String deleteCustomer(int id);
	public Customer displaycustomerBYId(int id);
	//image upload and display operations
	public String addProduct(Product product);
	public List<Product> viewAllProducts();
	public Product displayProductById(int pid);

}
