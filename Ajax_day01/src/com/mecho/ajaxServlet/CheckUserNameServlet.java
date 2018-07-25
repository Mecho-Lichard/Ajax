package com.mecho.ajaxServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mecho.dao.UserDao;
import com.mecho.dao.impl.UserDaoImpl;

public class CheckUserNameServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1.检测是否存在
		String name=request.getParameter("nametrue");
		System.out.println("name="+name);
		
		UserDao dao=new UserDaoImpl();
		boolean isExist=dao.checkUserName(name);
		
		//2.通知页面，到底有还是没有
		if(isExist){
			response.getWriter().println(1);//存在用户名
			
		}else{
			response.getWriter().println(2);//不存在用户名
		}
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
