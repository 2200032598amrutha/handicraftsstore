package com.klef.jfsd.springbootsdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootsdp.model.Artician;
import com.klef.jfsd.springbootsdp.service.AdminService;

public class ArticianController {
	
	@Autowired
	private Artician articianService;
	
	@GetMapping("articianlogin")
	public ModelAndView articianlogin() {
		ModelAndView  mv=new ModelAndView();
		
		mv.setViewName("articianlogin");
		return mv;	
	}
	@GetMapping("articianreg")
	public ModelAndView articianreg() {
		ModelAndView  mv=new ModelAndView();
		mv.setViewName("articianreg");
		return mv;	
	}

}
