package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.model.Admin;

public class AdmRowMapper implements RowMapper<Admin> {

	@Override
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Admin a = new Admin();
		
		a.setUserId(rs.getString("userId"));
		a.setPassword(rs.getString("password"));
		return a;
	}

}
