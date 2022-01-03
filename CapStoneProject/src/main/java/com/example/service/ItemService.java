package com.example.service;

import java.util.List;

import com.example.bean.Item;

public interface ItemService {
	List<Item> getItemList(String itemType);
	Item getItemById(int itemId);

}
