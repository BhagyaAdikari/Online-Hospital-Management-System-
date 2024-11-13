package it23171992_com.users;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteRegisteredUserServlet")
public class DeleteRegisteredUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String page = request.getParameter("page");
		String userIdAdmin = request.getParameter("id");
		
		//user patient delete
		boolean isTrue = UserDbUtil.deleteRegisteredUser(userId);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("loginSignUp.jsp");
			dis.forward(request, response);
		}
		
		//admin patient delete
		if(page.equals("adminPatient")) {
			boolean isTrue2 = AdminDashboardDBUtil.deleteAdminPatient(userIdAdmin);
			
			if(isTrue2==true) {
				List<RegisteredPatient> getRegPatient = new ArrayList<RegisteredPatient>();
				getRegPatient = AdminDashboardDBUtil.getRegisteredPatientDetails();
				request.setAttribute("getRegPatient",getRegPatient);
				
				RequestDispatcher dis = request.getRequestDispatcher("patientManagment.jsp");
				dis.forward(request, response);
			}
		}
		
		
	
	}

}
