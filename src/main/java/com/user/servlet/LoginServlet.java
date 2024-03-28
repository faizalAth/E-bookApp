package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDaoImpl;
import com.db.DBConnection;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private UserDaoImpl daoImpl = new UserDaoImpl(DBConnection.getConnection());
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		try {
			User userData = daoImpl.loginUser(email, password);
			if(userData != null && userData.getFirstName() != null) {
				session.setAttribute("userData", userData);
				if("A".equals(userData.getRole())) {
					resp.sendRedirect("adminHome.jsp");
				}else if("U".equals(userData.getRole())) {
					resp.sendRedirect("userHome.jsp");
				}
			}else {
				session.setAttribute("failedMsg","Invalid Credentials!");
				resp.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			resp.sendRedirect("login.jsp");
			e.printStackTrace();
		}
	}

}
