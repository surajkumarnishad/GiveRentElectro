package com.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class Profiles {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int sr;
	private String Name;
	private String Father_name;
	private String DOB;
	private String Email;
	private String Mobile;
	private String Password;
	private String Id;
	private String Photo;
	public Profiles(String name, String father_name, String dOB, String email, String mobile, String password,
			String id, String photo) {
		super();
		Name = name;
		Father_name = father_name;
		DOB = dOB;
		Email = email;
		Mobile = mobile;
		Password = password;
		Id = id;
		Photo = photo;
	}
	public Profiles() {
		super();
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getFather_name() {
		return Father_name;
	}
	public void setFather_name(String father_name) {
		Father_name = father_name;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getPhoto() {
		return Photo;
	}
	public void setPhoto(String photo) {
		Photo = photo;
	}
	
	
	

}
