package it23171992_com.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userLogoutServlet")
public class userLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get current session
		HttpSession session = request.getSession(false);
		
		//invalidate the session
		if(session != null) {
			session.invalidate();
		}
		
		//redirect the login page
		response.sendRedirect("loginSignUp.jsp");
	}

}
