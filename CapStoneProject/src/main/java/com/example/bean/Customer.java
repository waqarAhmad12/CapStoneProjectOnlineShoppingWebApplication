package com.example.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.NaturalId;
import org.springframework.stereotype.Component;
@Entity
@Component
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NaturalId
	private String emailAddress;
	private String password;
	private String firstName;
	private String lastName;
	private String address;
	private String contactNo;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int id, String emailAddress, String password, String firstName, String lastName, String address,
			String contactNo) {
		super();
		this.id = id;
		this.emailAddress = emailAddress;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.contactNo = contactNo;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", emailAddress=" + emailAddress + ", password=" + password + ", firstName="
				+ firstName + ", lastName=" + lastName + ", address=" + address + ", contactNo=" + contactNo + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
}
