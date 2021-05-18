package com.controller;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;



@Service
public class BillingService {
	
	
	public double calculateTotalCost(Billing billing)
	{
		int priceApple = 50;
		int priceOrange = 30;
		int priceBanana = 5;
		int priceKiwi = 15;
		int priceWatermelon = 60;
		int qty = billing.getQty();
		String itemtype = billing.getItem();
		double totalCost = 0;
		
		if(itemtype.equals("Apple")) {
			totalCost = totalCost + (qty * 50);
		}else if(itemtype.equals("Orange")) {
			totalCost = totalCost + (qty * 30);
		}
		else if(itemtype.equals("Banana")) {
			totalCost = totalCost + (qty * 5);
		}
		else if(itemtype.equals("Kiwi")) {
			totalCost = totalCost + (qty * 15);
		}
		else  {
			totalCost = totalCost + (qty * 60);
		}
		return totalCost;
		
	}

}