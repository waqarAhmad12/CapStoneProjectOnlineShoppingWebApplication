package com.example.helper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.example.bean.Customer;

public class CustomerMapping implements RowMapper<Customer>{

	@Override
	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Customer customer = new Customer();
		customer.setId(rs.getInt(1));
		customer.setAddress(rs.getString(2));
		customer.setContactNo(rs.getString(3));
		customer.setEmailAddress(rs.getString(4));
		customer.setFirstName(rs.getString(5));
		customer.setLastName(rs.getString(6));
		customer.setPassword(rs.getString(7));
		return customer;
		
	}

}
