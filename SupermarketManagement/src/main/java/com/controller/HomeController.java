package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.RegDao;
import com.model.Admin;
import com.model.Customer;
import com.model.Inventory;
import com.model.Registration;

@Controller
@ComponentScan("com.*")
public class HomeController {

	@Autowired    
	private RegDao dao;
	
	 // HOME PAGE
	@RequestMapping(value="/home")
	public String showHomePage() {
		
		return "home";
	}
	
	// SIGN-UP PAGE
	@GetMapping("/registration")   
	public ModelAndView SignUpPage() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("registration");
		return mv;
	}

	// SIGN-UP PAGE TO DATABASE
	@PostMapping("/registration")
	public ModelAndView registrationToDb(Registration r) {
		
	this.dao.create(r);	
	ModelAndView mv=new ModelAndView();
	mv.setViewName("registrationSuccessful");
	return mv;
	}

	// ADMIN PAGE
	@GetMapping("/admin")
	public String AdminToDb() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin");
		return "mv";
	}
	
	
	// ADMIN LOGIN AUTHENTICATION
	@PostMapping("/admin")
	public ModelAndView AdmAuthentication(Admin a) {
		ModelAndView mv=new ModelAndView();
		
		try {
			boolean authh = this.dao.validateadmin(a);
			if(authh) {
				mv.setViewName("adminsPage");
			}else {
				mv.setViewName("invalid");
			}
			return mv;
		}catch(Exception e)
		{
			mv.setViewName("admin");
		}
		
		return mv;
	}
	
	// TO VIEW REGISTRATION DETAILS FROM DATABASE TO JSP PAGE
	@RequestMapping("/viewRDetails")    
    public String viewemp(Model m){    
        List<Registration> list=dao.getRegistrationDetails();    
        m.addAttribute("list",list);  
        return "viewRDetails";    
    }
	// TO DISPLAY MANAGER/CASHIER PAGE
	@GetMapping(value="/managerCashier")
	public String registrationOfMangCash() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("managerCashier");
		return "mv";
	}
	
	// MANAGER/CASHIER LOGIN AUTHENTICATION
	@PostMapping(value="/managerCashier")
	public ModelAndView Authentication(Registration r) {
		ModelAndView mv=new ModelAndView();
		
		try {
			boolean auth = this.dao.validateuser(r);
			if(auth) {
				mv.setViewName("AddOrBill");
			}else {
				mv.setViewName("invalid");  // SHOWS INVALID JSP PAGE AFTER WRONG CREDENTIALS
			}
			return mv;
		}catch(Exception e)
		{
			mv.setViewName("managerCashier");
		}
		
		return mv;
	}
	
	// SHOWS INVALID JSP PAGE AFTER WRONG CREDENTIALS
	@GetMapping(value="/invalid")
	public ModelAndView invalidPage() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("invalid");
		return mv;
	}
	
	// DISPLAYS CUSTOMER DETAILS FORM FOR INPUT 
	@GetMapping("/customerForm")   
	public ModelAndView customerPage() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/customerForm");
		return mv;
	}
	
	// STORES CUSTOMER DETAILS IN DATABASE
	@PostMapping("/customerForm")
	public ModelAndView customerToDb(Customer c) {
		
	this.dao.creates(c);	
	ModelAndView mv=new ModelAndView();
	mv.setViewName("registrationSuccessful");
	return mv;
	}
	
	// DISPLAYS INVENTORY PAGE
	@GetMapping("/inventory")   
	public ModelAndView inventoryPage() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("inventory");
		return mv;
	}
	
	// STORES INVENTORY DETAILS IN DATABASE
	@PostMapping("/inventory")
	public ModelAndView inventoryToPage(Inventory i) {
		this.dao.createInventory(i);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("registrationSuccessful");
		return mv;
	}
	
	// TO VIEW INVENTORY DETAILS FROM DATABASE TO JSP PAGE
	@RequestMapping("/viewInventory")    
	    public String viewInventory(Model m){    
	        List<Inventory> list=dao.getInventoryDetails();    
	        m.addAttribute("list",list);  
	        return "viewInventory";    
	}
	 
	 
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String signInPage(ModelMap model) {
		return "forgotPassword";
	}
	@RequestMapping(value = "/forgotUserId", method = RequestMethod.GET)
	public String signInPage2(ModelMap model) {
		return "forgotUserId";
	}
	@RequestMapping(value = "/billing", method = RequestMethod.POST)
	public String billingPage(ModelMap model) {
		return "billing";
	}
	@RequestMapping(value = "/AddOrBill", method = RequestMethod.POST)
	public String AddOrBillPage(ModelMap model) {
		return "inventory";
	}
	
	@GetMapping("/reportGeneration")   
	public ModelAndView Report() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("reportGeneration");
		return mv;
	}
	
	@PostMapping("/reportGeneration")
	public ModelAndView dailyWeeklyReport() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("reportGeneration");
		return mv;
	}
	
	@RequestMapping(value="/editform")    
	    public String edit(@PathVariable int id, Model m){    
	        Registration emp=dao.getRegistrationById(id);    
	        m.addAttribute("command",emp);  
	        return "editform";    
	}

	
}

	



