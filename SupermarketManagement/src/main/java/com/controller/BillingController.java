package com.controller;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class BillingController {
	@Autowired
	private BillingService billingService;
	
	@ModelAttribute("itemList")
    public Map<String,String> buildState() 
    {
		Map<String,String> pairs = new HashMap<>();
        pairs.put("Apple", "Apple");
        pairs.put("Orange", "Orange");
        pairs.put("Banana", "Banana");
        pairs.put("Kiwi", "Kiwi");
        pairs.put("Watermelon", "Watermelon");
        
        return pairs;
    }
	
	// DISPLAYS BILLING RESULT PAGE
	@RequestMapping(value = "/calculateCost", method = RequestMethod.POST)
	public String calculateTotalCost(@ModelAttribute("billing") Billing billing,ModelMap model) {
		double totalCost = billingService.calculateTotalCost(billing);
		model.put("cost", totalCost);
		return "resultjsp";
	}
	
	//  DISPLAYS BILLING PAGE
	@RequestMapping(value = "/showpage", method = RequestMethod.GET)
	public String showPage(@ModelAttribute("billing") Billing billing) {
		return "showpage";
		
	}
	



}