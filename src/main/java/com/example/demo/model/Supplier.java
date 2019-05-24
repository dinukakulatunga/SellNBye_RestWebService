package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "seller") // table name
public class Supplier {

	@Id
	private int id;
	
	private String cmpName;
	
	private String agt_name;
	
	private String cmp_address;
	
	private String cmp_country;
	
	private String cmp_email;
	
	private String cmp_phnumber;
	
	private String cmp_website;
	
	private String prod_category;
	

	public Supplier() {
	}

	public Supplier(String cmpName, String agt_name, String cmp_address, String cmp_country, String cmp_email,
			String cmp_phnumber, String cmp_website, String prod_category) {
		super();
		this.cmpName = cmpName;
		this.agt_name = agt_name;
		this.cmp_address = cmp_address;
		this.cmp_country = cmp_country;
		this.cmp_email = cmp_email;
		this.cmp_phnumber = cmp_phnumber;
		this.cmp_website = cmp_website;
		this.prod_category = prod_category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCmpName() {
		return cmpName;
	}

	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}

	public String getAgt_name() {
		return agt_name;
	}

	public void setAgt_name(String agt_name) {
		this.agt_name = agt_name;
	}

	public String getCmp_address() {
		return cmp_address;
	}

	public void setCmp_address(String cmp_address) {
		this.cmp_address = cmp_address;
	}

	public String getCmp_country() {
		return cmp_country;
	}

	public void setCmp_country(String cmp_country) {
		this.cmp_country = cmp_country;
	}

	public String getCmp_email() {
		return cmp_email;
	}

	public void setCmp_email(String cmp_email) {
		this.cmp_email = cmp_email;
	}

	public String getCmp_phnumber() {
		return cmp_phnumber;
	}

	public void setCmp_phnumber(String cmp_phnumber) {
		this.cmp_phnumber = cmp_phnumber;
	}

	public String getCmp_website() {
		return cmp_website;
	}

	public void setCmp_website(String cmp_website) {
		this.cmp_website = cmp_website;
	}

	public String getProd_category() {
		return prod_category;
	}

	public void setProd_category(String prod_category) {
		this.prod_category = prod_category;
	}

	@Override
	public String toString() {
		return "Supplier [id=" + id + ", cmpName=" + cmpName + ", agt_name=" + agt_name + ", cmp_address=" + cmp_address
				+ ", cmp_country=" + cmp_country + ", cmp_email=" + cmp_email + ", cmp_phnumber=" + cmp_phnumber
				+ ", cmp_website=" + cmp_website + ", prod_category=" + prod_category + "]";
	}


	

	

}
