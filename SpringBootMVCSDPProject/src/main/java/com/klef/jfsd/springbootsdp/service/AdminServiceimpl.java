package com.klef.jfsd.springbootsdp.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springbootsdp.model.Admin;
import com.klef.jfsd.springbootsdp.model.Customer;
import com.klef.jfsd.springbootsdp.model.Product;
import com.klef.jfsd.springbootsdp.repository.AdminRepository;
import com.klef.jfsd.springbootsdp.repository.CustomerRepository;
import com.klef.jfsd.springbootsdp.repository.ProductRepository;
@Service
public class AdminServiceimpl implements AdminService{
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private ProductRepository productRepository;
	

	@Override
	public List<Customer> viewAllCustomers() 
	{
		return customerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) 
	{
		return adminRepository.checkAdminLogin(uname, pwd);
	}
	@Override
	public long customercount() {
		// TODO Auto-generated method stub
		
		return customerRepository.count();
	}
	@Override
	public String deleteCustomer(int id) {
	    if (customerRepository.existsById(id)) {
	        customerRepository.deleteById(id);
	        return "Customer Deleted Successfully";
	    } else {
	        return "Customer with ID " + id + " does not exist.";
	    }
	}
	@Override
	public Customer displaycustomerBYId(int id) {
		// TODO Auto-generated method stub
		return customerRepository.findById(id).get();
	}
	@Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "Product Added Successfully";
	}
	@Override
	public List<Product> viewAllProducts() {
		
		return productRepository.findAll();
	}
	@Override
	public Product displayProductById(int pid) {
		// TODO Auto-generated method stub
		return productRepository.findById(pid).get();
	}



}
