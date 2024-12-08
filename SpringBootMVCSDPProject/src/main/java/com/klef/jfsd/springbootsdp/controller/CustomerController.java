package com.klef.jfsd.springbootsdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootsdp.model.Admin;
import com.klef.jfsd.springbootsdp.model.Customer;
import com.klef.jfsd.springbootsdp.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("home");
		return mv;	
	}
	@GetMapping("customerreg")
	public ModelAndView customerreg() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("customerreg");
		return mv;	
	}
	@GetMapping("customerhome")
	public ModelAndView customehome() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("customerhome");
		return mv;	
	}
	@GetMapping("customerlogout")
	public ModelAndView customerlogout() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("customerlogout");
		return mv;	
	}
	
	@GetMapping("customerprofile")
	public ModelAndView customerprofile() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("customerprofile");
		return mv;	
	}
	
	@PostMapping("insertcustomer")
	public ModelAndView insercustomer(HttpServletRequest request)
	{
		//take the data from the HTML to middle
		String name = request.getParameter("cname");
		String gender = request.getParameter("cgender");
		String dob = request.getParameter("cdob");
		String email = request.getParameter("cemail");
		String password = request.getParameter("cpwd");
		String location = request.getParameter("clocation");
		String contact = request.getParameter("ccontact");
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateofbirth(dob);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setLocation(location);
		customer.setContact(contact);
		
		String message = customerService.customerRegistration(customer);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message", message);
		
		return mv;
	}
	
	@GetMapping("customerlogin")
	public ModelAndView customerlogin() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("customerlogin");
		return mv;	
	}
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String cemail = request.getParameter("cemail");
		String cpwd = request.getParameter("cpwd");
		
		 Customer customer =  customerService.checkCustomerLogin(cemail, cpwd);
		
		if(customer != null) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("customer", customer);
			mv.setViewName("customerhome"); // Login success
			
			
		}
		else 
		{
			mv.setViewName("customerlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("updateprofile")
	public ModelAndView updateprofile() {
		ModelAndView  mv=new ModelAndView("updateprofile");
		return mv;
	}
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request) {
		ModelAndView  mv=new ModelAndView("updateprofile");
		
		int id = Integer.parseInt(request.getParameter("cid"));
		//take the data from the HTML to middle
				String name = request.getParameter("cname");
				String gender = request.getParameter("cgender");
				String dob = request.getParameter("cdob");
				
				String password = request.getParameter("cpwd");
				String location = request.getParameter("clocation");
				String contact = request.getParameter("ccontact");
				
				Customer customer = new Customer();
				customer.setId(id);
				customer.setName(name);
				customer.setGender(gender);
				customer.setDateofbirth(dob);
				
				customer.setPassword(password);
				customer.setLocation(location);
				customer.setContact(contact);
				
				customerService.updatecustomer(customer);
				mv.setViewName("customerlogin");
		return mv;
		
	}
	
	

}
