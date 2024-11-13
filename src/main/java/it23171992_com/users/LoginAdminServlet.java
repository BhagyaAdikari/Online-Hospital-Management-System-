package it23171992_com.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it23171992_Ambulance.Ambulance;

@WebServlet("/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		HttpSession adminSession = request.getSession();
		
		boolean isTrue = AdminDashboardDBUtil.validateAdminCredential(uname, pass);
		System.out.println(isTrue);
		if(isTrue == true ) {
			adminSession.setAttribute("user", uname);
			RequestDispatcher dis = request.getRequestDispatcher("adminIndex.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry,Your username or password was incorrected,then please re-check')");
			out.println("location='loginSignUp.jsp'");
			out.println("</script>");
			System.out.println("incorrect");
		}
		
		
	}

}
