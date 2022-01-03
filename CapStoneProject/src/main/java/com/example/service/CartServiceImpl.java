package com.example.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bean.Cart;
import com.example.bean.Customer;
import com.example.bean.Item;
import com.example.dao.CartDao;
import com.example.dao.ItemDao;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	CartDao cartDao;
	@Autowired
	ItemDao itemDao;
	@Override
	public boolean addItemToCart(int itemId,int quantity) {
		try {
		Iterable<Item> iList = itemDao.findAll();
		Item item=null;
		Iterator<Item> itemList = iList.iterator();
		while(itemList.hasNext())
		{
			Item i=itemList.next();
			if(i.getItemId() == itemId)
			{
				item=i;
				break;
			}
		}
		double totalPrice=(item.getPrice()+(item.getPrice()*item.getTax())/100)*quantity;
		Cart cart = new Cart();
		cart.setItemId(item.getItemId());
		cart.setItemName(item.getItemName());
		cart.setQuantity(quantity);
		cart.setUnitPrice(item.getPrice());
		cart.setTax(item.getTax());
		cart.setPrice(totalPrice);
		cartDao.save(cart);
		return true;
		}
		catch (Exception e) {
			return false;
			// TODO: handle exception
		}
		
	}
	@Override
	public List<Cart> showCart() {
		Iterable<Cart> cartItem = cartDao.findAll();
		List<Cart> cartList = new ArrayList<>();
		cartItem.forEach(i->{
			System.out.println(i);
			cartList.add(i);
		});
		return cartList;
	}
	@Override
	public void emptyCart() {
		cartDao.deleteAll();
		
	}

}
