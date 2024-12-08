package com.klef.jfsd.springbootsdp.controller;

import java.sql.Blob;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootsdp.model.Admin;
import com.klef.jfsd.springbootsdp.model.Customer;
import com.klef.jfsd.springbootsdp.model.Product;
import com.klef.jfsd.springbootsdp.repository.ProductRepository;
import com.klef.jfsd.springbootsdp.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("adminlogin");
		return mv;	
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin != null) 
		{
			mv.setViewName("adminhome"); // Login success
			
			long count = adminService.customercount();
			mv.addObject("count",count);
		}
		else 
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView  mv=new ModelAndView("adminhome");
		long count = adminService.customercount();
		mv.addObject("count",count);
		
		return mv;	
	}
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcustomers");
		long count = adminService.customercount();
		mv.addObject("count",count); 
		List<Customer> customers =  adminService.viewAllCustomers();
		mv.addObject("customerlist",customers);
		return mv;
	}
	@GetMapping("deletecustomers")
	public ModelAndView deletecustomers() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletecustomers");
		List<Customer> customers =  adminService.viewAllCustomers();
		mv.addObject("customerlist",customers);
		return mv;
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam int id) 
	{
		adminService.deleteCustomer(id);
		return "redirect:/deletecustomers";
	}
	
	@GetMapping("viewcustomerbyid")
	public ModelAndView viewcustomerbyid() {
		ModelAndView  mv=new ModelAndView();
		List<Customer> customers =  adminService.viewAllCustomers();
		mv.addObject("customerlist",customers);
		
		
		mv.setViewName("viewcustomerbyid");
		return mv;	
	}
	@PostMapping("displaycustomer")
	public ModelAndView displaycustomer(HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("id"));
		Customer customer= adminService.displaycustomerBYId(id);
		
		ModelAndView mv=new ModelAndView("displaycustomer");
		mv.addObject("c",customer);
		return mv;
		
	} 
	
	@GetMapping("addproduct")
	public String addproduct() {
		return "addproduct";
		
	}
	
	@PostMapping("insertproduct")
	public ModelAndView insertproduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) throws IOException, SerialException, SQLException {
	    // Retrieve parameters from the request
	    String name = request.getParameter("pname");
	    String costString = request.getParameter("pcost"); // Product cost as String
	    String description = request.getParameter("pdescription");
	    String category = request.getParameter("pcategory");

	    // Initialize cost with a default value
	    double cost = 0.0;

	    // Check if the cost string is not null or empty, then parse it
	    if (costString != null && !costString.trim().isEmpty()) {
	        try {
	            cost = Double.parseDouble(costString.trim());
	        } catch (NumberFormatException e) {
	            // Log the error and provide a friendly error message
	            System.err.println("Invalid cost value: " + costString);
	            // Here you can add logic to show a user-friendly error message
	        }
	    } else {
	        // If cost is null or empty, set to 0 or handle as per your requirements
	        cost = 0.0;
	    }

	    // Process the image file (convert MultipartFile to Blob)
	    byte[] bytes = file.getBytes();
	    Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

	    // Create Product object and set values
	    Product p = new Product();
	    p.setCost(cost);
	    p.setDescription(description);
	    p.setName(name);
	    p.setCategory(category);
	    p.setImage(blob);

	    // Call the service layer to add the product
	    String message = adminService.addProduct(p);

	    // Create ModelAndView object and set view name and message
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("productsuccess"); // Adjust view name as needed
	    mv.addObject("message", message);

	    return mv;
	}


	



	@GetMapping("viewallproducts")
	public ModelAndView viewAllProducts() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallproducts");
	    List<Product> products = adminService.viewAllProducts();
	    mv.addObject("products", products);
	    return mv;
	} 
	
	@GetMapping("displayproductimage")
	public ResponseEntity<byte[]> displayproductimage(@RequestParam int id) throws SQLException {
	    // Retrieve the product by ID
	    Product product = adminService.displayProductById(id);

	    // Convert Blob to byte array
	    Blob imageBlob = product.getImage();
	    byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());

	    // Return the image as a response entity
	    return ResponseEntity.ok()
	            .contentType(MediaType.IMAGE_JPEG) // Ensure the content type matches the image format
	            .body(imageBytes);
	}


	
	
	
	
	
	
	

}
