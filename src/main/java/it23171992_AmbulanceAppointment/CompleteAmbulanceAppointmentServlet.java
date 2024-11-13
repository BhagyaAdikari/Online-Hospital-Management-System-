package it23171992_AmbulanceAppointment;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it23171992_AmbulanceDriver.RegisterAmbulanceDriver;
import it23171992_com.users.AdminDashboardDBUtil;
import it23171992_com.users.UserDbUtil;
import it23171992_userDefinedExceptions.CheckNullValuesException;

@WebServlet("/CompleteAmbulanceAppointment")
public class CompleteAmbulanceAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("appointmentId");
		String totalFee = request.getParameter("travelFee");
		String status = request.getParameter("status");
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		
		try {
			if(id==null || totalFee==null || status==null || username==null || password==null) {
				throw new CheckNullValuesException("Null values are came to the CompleteAmbulanceAppointment");
			}
		}catch(CheckNullValuesException e) {
			e.getMessage();
		}finally {
			boolean isTrue = AdminDashboardDBUtil.completeAppointmentFromDriver(id, status,totalFee);
			
			if(isTrue==true) {
				List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();
				ambDriver = UserDbUtil.getAmbulanceDriverDetailsAccordingUserCredentials(username, password);
				request.setAttribute("ambDriver", ambDriver);
				
				List<AmbulanceAppointmentClass> ambAppointments = new ArrayList<AmbulanceAppointmentClass>();
				ambAppointments=UserDbUtil.getAmbulanceAppointmentDetails(username, password);
				request.setAttribute("ambAppointments", ambAppointments);
				
				RequestDispatcher dis = request.getRequestDispatcher("AmbulanceDriverProfile.jsp");
				dis.forward(request, response);
			}
		}
		
		
	}

}
