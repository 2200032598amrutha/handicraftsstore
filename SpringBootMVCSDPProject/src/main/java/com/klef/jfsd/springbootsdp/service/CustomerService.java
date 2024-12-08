package com.klef.jfsd.springbootsdp.service;

import com.klef.jfsd.springbootsdp.model.Customer;

public interface CustomerService {
	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String password);
	public String updatecustomer(Customer customer);

}
