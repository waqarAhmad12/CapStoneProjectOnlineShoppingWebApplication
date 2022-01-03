package com.example.service;

import org.springframework.stereotype.Service;

import com.example.bean.Customer;


public interface CustomerService {
	boolean isRegistered(String emailAddress,String password);
	Customer getCustomerByEmailAndPassword(String email,String password);

}
