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
import javax.servlet.http.HttpSession;

import it23171992_dataBaseConnection.HMSDBConnect;
import it23171992_MedicationReports.MedicationReports;

@WebServlet("/RegisteredUserLoginServlet")
public class RegisteredUserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String Password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
        HttpSession userSession = request.getSession();
		
		List<RegisteredPatient> patientDetails = UserDbUtil.getRegUserProfileDetails(username, Password);
		System.out.println(patientDetails);
		
		List<MedicationReports> medReportsDetils = UserDbUtil.getDetailsMedicationReports(username, Password);
		
		boolean isTrue = UserDbUtil.validate(username, Password);
		
		if(isTrue == true) {
			userSession.setAttribute("patientDetails", patientDetails);
			userSession.setAttribute("medReportsDetils", medReportsDetils);
			userSession.setAttribute("user", username);
			System.out.println("User logged in: " + username);
			RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
			dis.forward(request, response);
			System.out.println("correct");
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
