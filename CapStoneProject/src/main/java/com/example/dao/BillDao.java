package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Billing;
@Repository
public interface BillDao extends CrudRepository<Billing, Integer> {

}
