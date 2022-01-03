package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Customer;
@Repository
public interface CustomerDao extends CrudRepository<Customer, Integer> {

}
