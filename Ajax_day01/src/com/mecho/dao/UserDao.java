package com.mecho.dao;

import java.sql.SQLException;

public interface UserDao {
	/*
	 * �Д��Ñ����Ƿ���ڣ����ڄt��true�������ڞ�false
	 * 
	 * */
		boolean checkUserName(String username);
}
