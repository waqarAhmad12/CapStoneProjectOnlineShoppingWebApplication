package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Cart;
@Repository
public interface CartDao extends CrudRepository<Cart, Integer> {

}
