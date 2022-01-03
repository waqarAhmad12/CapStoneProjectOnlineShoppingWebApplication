package com.example.demo;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.bean.Item;
import com.example.dao.ItemDao;
import com.example.service.ItemService;

@RestController
public class SearchController {
	@Autowired
	ItemDao itemDao;
	//search handler
	@GetMapping("/search/{query}")
	public ResponseEntity<?> search(@PathVariable("query") String query)
	{
		System.out.println("query");
		List<Item> items = itemDao.findByItemNameContaining(query);
		return ResponseEntity.ok(items);
	}
}
