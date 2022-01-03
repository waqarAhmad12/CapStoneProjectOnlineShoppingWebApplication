package com.example.service;

import java.util.List;

import com.example.bean.Billing;

public interface BillService {
	List<Billing> generateBill();
	void emptyBill();

}
