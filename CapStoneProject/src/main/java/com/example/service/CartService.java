package com.example.service;

import java.util.List;

import com.example.bean.Cart;


public interface CartService {
	boolean addItemToCart(int itemId,int quantity);
	List<Cart> showCart();
	void emptyCart();
}
