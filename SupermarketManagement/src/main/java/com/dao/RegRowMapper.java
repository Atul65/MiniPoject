package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.model.Registration;

public class RegRowMapper implements RowMapper<Registration>{
	
	@Override
	public Registration mapRow(ResultSet rs, int rowNum) throws SQLException{
		Registration r = new Registration();
		
		r.setUserId(rs.getString("userId"));
		r.setPassword(rs.getString("password"));
		
		return r;
	}

}
