package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.model.Admin;
import com.model.Customer;
import com.model.Inventory;
import com.model.Registration;

@Repository
@Component
public class RegDao {
	@Autowired(required = true)
	private JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	} 
  
// STORES REGISTRATION DETAILS INTO DATABASE
public boolean create(Registration r) {
	
	String sql="insert into registration (firstName,lastName,dob,gender,contactNo,userId,password,category) values( ?,?,?,?,?,?,?,?)";
	template.update(sql,r.getFirstName(),r.getLastName(),r.getDob(), r.getGender(),r.getContactNo(),r.getUserId(),r.getPassword(),r.getCategory());
	 return true;
	
}

// MANAGER/CASHIER LOGIN AUTHENTICATION
public boolean validateuser(Registration r) {
	
	String sql = "select * from registration where userId=? and password=?";
	
	Registration dbr = template.queryForObject(sql, new Object[] {r.getUserId(),r.getPassword()}, new RegRowMapper());
	
	if(dbr == null) {
		
		return false;
	}
	return true;
}



// ADMIN LOGIN AUTHENTICATION
public boolean validateadmin(Admin a) {
	
	String sql = "select * from admin where userId=? and password=?";
	
	Admin adm = (Admin) template.queryForObject(sql,new Object[] {a.getUserId(),a.getPassword()}, new AdmRowMapper());
	
	if(adm == null) {
		
		return false;
	}
	return true;
}

// RETRIEVE THE DATA FROM REGISTRATION TABLE (DATABASE) AND SHOWS ON WEB PAGE 
public List<Registration> getRegistrationDetails(){    
    return template.query("select * from registration",new RowMapper<Registration>(){    
        public Registration mapRow(ResultSet rs,  int row) throws SQLException {    
        	
        	Registration e=new Registration(); 
        	
        	e.setId(rs.getInt(1));
            e.setFirstName(rs.getString(2));    
            e.setLastName(rs.getString(3));    
            e.setDob(rs.getString(4));    
            e.setGender(rs.getString(5)); 
            e.setContactNo(rs.getString(6));
            e.setUserId(rs.getString(7));
            e.setPassword(rs.getString(8));
            e.setCategory(rs.getString(9));
            e.setStatus(rs.getString(10));
            return e;    
        }    
    });    
}

//RETRIEVE THE DATA FROM INVENTORY TABLE (DATABASE) AND SHOWS ON WEB PAGE
public List<Inventory> getInventoryDetails(){    
    return template.query("select * from inventory",new RowMapper<Inventory>(){    
        public Inventory mapRow(ResultSet rs,  int row) throws SQLException {    
        	
        	Inventory e=new Inventory(); 
        	
        	e.setItemName(rs.getString(1));
            e.setCategory(rs.getString(2));    
            e.setManufacturer(rs.getString(3));    
            e.setQuantity(rs.getInt(4));    
            e.setRate(rs.getDouble(5)); 
            e.setDiscount(rs.getDouble(6));
     
            return e;    
        }    
    });    
}

// STORES CUSTOMER DETAILS INTO DATABASE
public boolean creates(Customer c) {

String sql="insert into customer (firstName,lastName,dob,gender,contactNo,email,userId) values(?,?,?,?,?,?,?)";
template.update(sql,c.getFirstName(),c.getLastName(),c.getDob(),c.getGender(),c.getContactNo(),c.getEmail(),c.getUserId());
 return true;

}


// STORES INVENTORY DETAILS INTO DATABASE
public boolean createInventory(Inventory i) {
	
	String sql="insert into inventory (itemName,category,manufacturer,quantity,rate,discount) values(?,?,?,?,?,?)";
	template.update(sql,i.getItemName(),i.getCategory(),i.getManufacturer(), i.getQuantity(),i.getRate(),i.getDiscount());
	 return true;	
}

public Registration getRegistrationById(int id){    
    String sql="select * from registration where id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Registration>(Registration.class));    
}



}