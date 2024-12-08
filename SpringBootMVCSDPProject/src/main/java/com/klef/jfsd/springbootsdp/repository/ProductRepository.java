package com.klef.jfsd.springbootsdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springbootsdp.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
