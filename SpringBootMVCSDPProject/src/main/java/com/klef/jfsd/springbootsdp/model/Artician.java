package com.klef.jfsd.springbootsdp.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name = "artician_table")
public class Artician {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "artician_id")
    private int id;

    @Column(name = "artician_name", nullable = false, length = 100)
    private String name;

    @Column(name = "artician_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "artician_email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "artician_password", nullable = false, length = 100)
    private String password;

    @Column(name = "artician_location", nullable = false, length = 100)
    private String location;

    @Column(name = "artician_contact", nullable = true, unique = true, length = 20)
    private String contact;

    @Column(name = "artician_skills", nullable = true, length = 255)
    private String skills;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}
   
}

