package com.models;

import jakarta.persistence.Embeddable;

@Embeddable
public class Features {
	
	String p_processor;
	String ram;
	String storage;
	String brand;
	String os;
	public Features(String p_processor, String ram, String storage, String brand, String os) {
		super();
		this.p_processor = p_processor;
		this.ram = ram;
		this.storage = storage;
		this.brand = brand;
		this.os = os;
	}
	public String getP_processor() {
		return p_processor;
	}
	public void setP_processor(String p_processor) {
		this.p_processor = p_processor;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getstorage() {
		return storage;
	}
	public void setstorage(String storage) {
		this.storage = storage;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public Features() {
		super();
	}
	
	
}
