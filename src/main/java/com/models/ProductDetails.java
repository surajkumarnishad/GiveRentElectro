package com.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ProductDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private String p_category;
	private String p_name;
	private String p_description;
	private String p_dimension;
	private P_Images images;
	private Features features;
	private String rent;
	private String deposit;
	public ProductDetails(String p_category, String p_name, String p_description, String p_dimension,
			P_Images images, Features features, String rent, String deposit) {
		super();
		this.p_category = p_category;
		this.p_name = p_name;
		this.p_description = p_description;
		this.p_dimension = p_dimension;
		this.images = images;
		this.features = features;
		this.rent = rent;
		this.deposit = deposit;
	}
	public int getPid() {
		return pid;
	}
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_description() {
		return p_description;
	}
	public void setP_description(String p_description) {
		this.p_description = p_description;
	}
	public String getP_dimension() {
		return p_dimension;
	}
	public void setP_dimension(String p_dimension) {
		this.p_dimension = p_dimension;
	}
	public P_Images getImages() {
		return images;
	}
	public void setImages(P_Images images) {
		this.images = images;
	}
	public Features getFeatures() {
		return features;
	}
	public void setFeatures(Features features) {
		this.features = features;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}
	public ProductDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
