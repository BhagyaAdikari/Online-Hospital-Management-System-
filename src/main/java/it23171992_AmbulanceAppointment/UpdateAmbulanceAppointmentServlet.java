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

import it23171992_Ambulance.Ambulance;
import it23171992_com.users.AdminDashboardDBUtil;
import it23171992_userDefinedExceptions.CheckNullValuesException;

@WebServlet("/UpdateAmbulanceAppointmentServlet")
public class UpdateAmbulanceAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("appid");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String destinatiom = request.getParameter("destination");
		
		try {
			if(id==null||date==null || time==null||destinatiom==null) {
				throw new CheckNullValuesException("Null values are came to the UpdateAmbulanceAppointmentServlet");
			}
		}catch(CheckNullValuesException e) {
			e.getMessage();
		}finally {
			boolean isTrue = AdminDashboardDBUtil.updateAppointmentDetails(id, date, time, destinatiom);
			
			if(isTrue==true) {
				List<AmbulanceAppointmentClass> ambAppointments = new ArrayList<AmbulanceAppointmentClass>();
				ambAppointments = AdminDashboardDBUtil.getAmbulanceAppointmentDetails();
				request.setAttribute("ambAppointments",ambAppointments);
				
				
				List<Ambulance> availableAmbulance = new ArrayList<Ambulance>();
				availableAmbulance = AdminDashboardDBUtil.getAvailableAmbulances();
				request.setAttribute("availableAmbulance",availableAmbulance);
				
				RequestDispatcher dis = request.getRequestDispatcher("AmbulanceAppointmentManagement.jsp");
				dis.forward(request, response);
			}
		}
		

	}

}
