package com.example.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int prodId;
private int itemId;
private int quantity;
private double unitPrice;
private String itemName;
private double tax;
private double price;
public Cart() {
	super();
	
}
public Cart(int prodId, int itemId, int quantity, double unitPrice, String itemName, double tax, double price) {
	super();
	this.prodId = prodId;
	this.itemId = itemId;
	this.quantity = quantity;
	this.unitPrice = unitPrice;
	this.itemName = itemName;
	this.tax = tax;
	this.price = price;
}
public int getProdId() {
	return prodId;
}
public void setProdId(int prodId) {
	this.prodId = prodId;
}
public int getItemId() {
	return itemId;
}
public void setItemId(int itemId) {
	this.itemId = itemId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getUnitPrice() {
	return unitPrice;
}
public void setUnitPrice(double unitPrice) {
	this.unitPrice = unitPrice;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
public double getTax() {
	return tax;
}
public void setTax(double tax) {
	this.tax = tax;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}

}
