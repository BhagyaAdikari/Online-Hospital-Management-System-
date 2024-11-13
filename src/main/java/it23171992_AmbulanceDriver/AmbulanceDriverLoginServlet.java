package it23171992_AmbulanceDriver;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it23171992_AmbulanceAppointment.AmbulanceAppointmentClass;
import it23171992_com.users.UserDbUtil;

@WebServlet("/AmbulanceDriverLoginServlet")
public class AmbulanceDriverLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue = UserDbUtil.validateDriverCredentials(username, password);
		
		HttpSession driverSession = request.getSession();
		
		if(isTrue==true) {
			List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();
			ambDriver = UserDbUtil.getAmbulanceDriverDetailsAccordingUserCredentials(username, password);
			driverSession.setAttribute("ambDriver", ambDriver);
			driverSession.setAttribute("driver", username);
			
			List<AmbulanceAppointmentClass> ambAppointments = new ArrayList<AmbulanceAppointmentClass>();
			ambAppointments=UserDbUtil.getAmbulanceAppointmentDetails(username, password);
			driverSession.setAttribute("ambAppointments", ambAppointments);
			
			RequestDispatcher dis = request.getRequestDispatcher("AmbulanceDriverProfile.jsp");
			dis.forward(request, response);
		}
		else {
			System.out.println("error in driver login servlet");
		}
	}

}
