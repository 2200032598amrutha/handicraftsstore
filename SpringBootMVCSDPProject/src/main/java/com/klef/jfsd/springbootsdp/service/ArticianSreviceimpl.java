package com.klef.jfsd.springbootsdp.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.klef.jfsd.springbootsdp.model.Artician;

import com.klef.jfsd.springbootsdp.repository.ArticianRepository;


public class ArticianSreviceimpl implements ArticianService{
	@Autowired
	private ArticianRepository articianRepository;

	@Override
	public String articianRegistration(Artician artician) {
		// TODO Auto-generated method stub
		articianRepository.save(artician);
		return "Artician Registered Successfully !!!";
		
	}



}
