package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Registration;

@SpringBootApplication
public class SupermarketManagementApplication {
	public static void main(String[] args) {
		SpringApplication.run(SupermarketManagementApplication.class, args);
}
	
//  implements CommandLineRunner	
//	Registration r = new Registration();
//	
//	@Autowired
//	private JdbcTemplate jdbcTemplate;
//
//	public static void main(String[] args) {
//		SpringApplication.run(SupermarketManagementApplication.class, args);
//	}
//
//	@Override
//	public void run(String... args) throws Exception {
//		// TODO Auto-generated method stub
//		System.out.println("Hello World");
//		
//		this.create(r);
//	}
//	
//	public boolean create(Registration r) {
//		
//		String sql="insert into registration (firstName,lastName,dob,gender,contactNo,userId,password,catagory) values( ?,?,?,?,?,?,?,?)";
//		jdbcTemplate.update(sql,r.getFirstName(),r.getLastName(),r.getDob(), r.getGender(),r.getContactNo(),r.getUserId(),r.getPassword(),r.getCatagory());
//		 return true;
//		
//	}
}
