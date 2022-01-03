package com.example.service;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bean.Customer;
import com.example.dao.CustomerDao;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerDao cdao;

	@Override
	public boolean isRegistered(String emailAddress, String password) {
		
		boolean flag=false;
		Iterable<Customer> allCustomer = cdao.findAll();
		Iterator<Customer> iterator = allCustomer.iterator();
		while(iterator.hasNext())
		{
			Customer c=iterator.next();
			
			if(c.getEmailAddress().equalsIgnoreCase(emailAddress) && c.getPassword().equalsIgnoreCase(password))
			{
				return true;
				
			}
		}
		return false;
	}

	@Override
	public Customer getCustomerByEmailAndPassword(String email, String password) {
		Iterable<Customer> all = cdao.findAll();
		Iterator<Customer> iterator = all.iterator();
		while(iterator.hasNext())
		{
			Customer c = iterator.next();
			if(c.getEmailAddress().equals(email) && c.getPassword().equals(password))
				return c;
		}
		return null;
	}

}
