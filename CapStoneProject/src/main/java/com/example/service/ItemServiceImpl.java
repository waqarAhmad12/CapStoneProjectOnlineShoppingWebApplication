package com.example.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bean.Item;
import com.example.dao.ItemDao;
@Service
public class ItemServiceImpl implements ItemService {
@Autowired
ItemDao itemDao;
	@Override
	public List<Item> getItemList(String itemType) {
		Iterable<Item> itemList = itemDao.findAll();
		List<Item> list=new ArrayList<>();
		itemList.forEach(item->{
			if(item.getItemType().equals(itemType))
			{
				list.add(item);	
			
			}
		});
		return list;
	}
	@Override
	public Item getItemById(int itemId) {
		Optional<Item> optional = itemDao.findById(itemId);
		Item item = optional.get();
		return item;
	}

}
