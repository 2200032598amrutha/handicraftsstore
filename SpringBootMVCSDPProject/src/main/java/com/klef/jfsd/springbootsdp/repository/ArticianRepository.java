package com.klef.jfsd.springbootsdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springbootsdp.model.Artician;

@Repository
public interface ArticianRepository extends JpaRepository<Artician, Integer> {
    
    // Custom query to validate Artician login using email and password
    @Query("select a from Artician a where a.email=?1 and a.password=?2")
    public Artician checkArticianLogin(String email, String password);
}