package it23171992_com.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChangePasswordRegisteredUser")
public class ChangePasswordRegisteredUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String oldPassword = request.getParameter("oldPass");
		String newPassword = request.getParameter("newPass");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue = UserDbUtil.changeRegPatientPassword(userId, oldPassword, newPassword);
		
		if(isTrue==true) {
			
			List<RegisteredPatient> patientDetails = UserDbUtil.getRegisteredPatientDetails(userId);
        	request.setAttribute("patientDetails", patientDetails);
			RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Missmatch Password,Re-try')");
			out.println("location='userProfile.jsp'");
			out.println("</script>");
			System.out.println("incorrect");
		}
		
	}

}
