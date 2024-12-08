package com.klef.jfsd.springbootsdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springbootsdp.model.Customer;
import com.klef.jfsd.springbootsdp.repository.CustomerRepository;
@Service
public class CustomerServiceimpl implements CustomerService{
	
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public String customerRegistration(Customer customer) 
	{
		customerRepository.save(customer);
		return "Customer Registered Successfully !!!";
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) 
	{
		
		return customerRepository.checkCustomerLogin(email, password);
	}

	@Override
	public String updatecustomer(Customer customer) {
		// TODO Auto-generated method stub4
		 Customer c =customerRepository.findById(customer.getId()).get();
		 c.setContact(customer.getContact());
		 
		 c.setDateofbirth(customer.getDateofbirth());
		 c.setGender(customer.getGender());
		 c.setLocation(customer.getLocation());
		 c.setName(customer.getName());
		 c.setPassword(customer.getPassword());
		 
		 customerRepository.save(c);
		 
		return "Customer Updated Successfully";
	}

}
