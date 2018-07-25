package com.mecho.dao;

import java.sql.SQLException;

public interface UserDao {
	/*
	 * 判斷用戶名是否存在，存在則為true，不存在為false
	 * 
	 * */
		boolean checkUserName(String username);
}
