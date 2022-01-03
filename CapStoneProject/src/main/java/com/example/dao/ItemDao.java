package com.example.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Item;
@Repository
public interface ItemDao extends CrudRepository<Item, Integer> {
public List<Item> findByItemNameContaining(String itemName);
public Item findByItemName(String itemName);
}
