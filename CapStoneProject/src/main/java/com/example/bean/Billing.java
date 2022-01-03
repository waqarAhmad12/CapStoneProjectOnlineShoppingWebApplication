package com.example.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Billing {
	@Id
private int billId;
private int customerId;
private int quantity;
private double price;
private double unitPrice;
private double tax;
private String itemName;
public Billing(int billId, int customerId, int quantity, double price, double unitPrice, double tax, String itemName) {
	super();
	this.billId = billId;
	this.customerId = customerId;
	this.quantity = quantity;
	this.price = price;
	this.unitPrice = unitPrice;
	this.tax = tax;
	this.itemName = itemName;
}
public int getBillId() {
	return billId;
}
public void setBillId(int billId) {
	this.billId = billId;
}
public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public double getUnitPrice() {
	return unitPrice;
}
public void setUnitPrice(double unitPrice) {
	this.unitPrice = unitPrice;
}
public double getTax() {
	return tax;
}
public void setTax(double tax) {
	this.tax = tax;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
@Override
public String toString() {
	return "Bill [billId=" + billId + ", customerId=" + customerId + ", quantity=" + quantity + ", price=" + price
			+ ", unitPrice=" + unitPrice + ", tax=" + tax + ", itemName=" + itemName + "]";
}
public Billing() {
	super();
	// TODO Auto-generated constructor stub
}

}
