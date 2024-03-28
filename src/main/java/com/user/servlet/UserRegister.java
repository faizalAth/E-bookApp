package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDaoImpl;
import com.db.DBConnection;
import com.entity.User;

//@WebServlet("reg")
public class UserRegister extends HttpServlet{

	private UserDaoImpl daoImpl = new UserDaoImpl(DBConnection.getConnection());

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String mobile = req.getParameter("mobile");
		String role = req.getParameter("role");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String condition = req.getParameter("condition");
		
		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setMobile(mobile);
		user.setRole(role);
		user.setEmail(email);
		user.setPassword(password);
		
		if(condition != null) {
			user.setCondition("Y");
			if( daoImpl.saveUser(user) ) {
				session.setAttribute("successMsg","User Register Seccussfully!");
				resp.sendRedirect("register.jsp");
			}else {
				session.setAttribute("failedMsg","Something Went Wrong on Server!");
				session.setAttribute("userData",user);
				resp.sendRedirect("register.jsp");
			}
		}else {
			session.setAttribute("failedMsg","Please Agree Terms and Conditions!");
			session.setAttribute("userData",user);
			resp.sendRedirect("register.jsp");
		}
		
		
	}
	
	
	
}
