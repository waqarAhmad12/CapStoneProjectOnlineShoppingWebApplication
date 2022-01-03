package com.example.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Item {
	@Id
	private int itemId;
	private String itemName;
	private String itemType;
	private int quantity;
	private double price;
	private double tax;
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
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
	public double getTax() {
		return tax;
	}
	public void setTax(double tax) {
		this.tax = tax;
	}
	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemName=" + itemName + ", itemType=" + itemType + ", quantity=" + quantity
				+ ", price=" + price + ", tax=" + tax + "]";
	}
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Item(int itemId, String itemName, String itemType, int quantity, double price, double tax) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.itemType = itemType;
		this.quantity = quantity;
		this.price = price;
		this.tax = tax;
	}

}
