package com.mecho.dao.impl;
import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import com.mecho.dao.UserDao;
import com.mecho.util.JDBCUtil02;

public class UserDaoImpl implements UserDao{

	public boolean checkUserName(String username) {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		
		String sql = "select count(*) from t_user where username =?";
		try {
			runner.query(sql, new  ScalarHandler(), username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Long result = null;
		try {
			result = (Long) runner.query(sql, new  ScalarHandler(), username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return result > 0 ;
	}

}
