package com.example.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bean.Billing;
import com.example.bean.Cart;
import com.example.dao.BillDao;

@Service
public class BillServiceImpl implements BillService{
@Autowired
BillDao billDao;
@Autowired
CartService cartService;
	@Override
	public List<Billing> generateBill() {
		List<Cart> cartItem = cartService.showCart();
		List<Billing> bill = new ArrayList<>();
		for(Cart c:cartItem)
		{
			Billing b=new Billing();
			b.setQuantity(c.getQuantity());
			b.setItemName(c.getItemName());
			b.setTax(c.getTax());
			b.setPrice(c.getPrice());
			b.setUnitPrice(c.getUnitPrice());
			bill.add(b);
			
		}
		return bill;
				
				
				
		
		
		
//		List<Billing> billList = new ArrayList<>();
//		Iterable<Billing> findAll = billDao.findAll();
//		Iterator<Billing> iterator = findAll.iterator();
//		while(iterator.hasNext())
//		{
//			billList.add(iterator.next());
//		}
//		return billList;
	}
	@Override
	public void emptyBill() {
		billDao.deleteAll();
		
	}

}
