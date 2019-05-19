package com.sellnbye.bean;

public class Order {

	int id;
	String orderName;	
	long population;
	
	public Order() {
		super();
	}
	public Order(int i, String orderName,long population) {
		super();
		this.id = i;
		this.orderName = orderName;
		this.population=population;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountryName() {
		return orderName;
	}
	public void setCountryName(String orderName) {
		this.orderName = orderName;
	}
	public long getPopulation() {
		return population;
	}
	public void setPopulation(long population) {
		this.population = population;
	}
}
