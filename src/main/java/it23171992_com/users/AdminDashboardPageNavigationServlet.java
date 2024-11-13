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

import it23171992_Ambulance.Ambulance;
import it23171992_AmbulanceAppointment.AmbulanceAppointmentClass;
import it23171992_AmbulanceDriver.RegisterAmbulanceDriver;
import it23171992_MedicationReports.MedicationReports;

@WebServlet("/AdminDashboardPageNavigationServlet")
public class AdminDashboardPageNavigationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		if(page==null) {
			response.sendRedirect("defaultDashboard.jsp");
		}
		else if(page.equals("ambulanceDriver")) {
			List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();
			ambDriver = AdminDashboardDBUtil.getAmbulanceDriverDetails();
			request.setAttribute("ambDriver", ambDriver);
			
			RequestDispatcher dis = request.getRequestDispatcher("AmbulanceDriverManagement.jsp");
			dis.forward(request, response);
		}
		else if(page.equals("ambulanceManager")) {
			List<Ambulance> ambDetails = new ArrayList<Ambulance>();
			ambDetails = AdminDashboardDBUtil.getAmbulanceDetails();
			request.setAttribute("ambDetails", ambDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AmbulanceManagement.jsp");
			dis.forward(request, response);
		}
		
		else if(page.equals("reviewReports")) {
			List<MedicationReports> fileDetails = new ArrayList<MedicationReports>();
			fileDetails = AdminDashboardDBUtil.getMedicationReportsDetailsAdmin();
			request.setAttribute("fileDetails",fileDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ReviewPatientMedicationReports.jsp");
			dis.forward(request, response);
		}
		
		else if(page.equals("registeredPatient")) {
			List<RegisteredPatient> getRegPatient = new ArrayList<RegisteredPatient>();
			getRegPatient = AdminDashboardDBUtil.getRegisteredPatientDetails();
			request.setAttribute("getRegPatient",getRegPatient);
			
			RequestDispatcher dis = request.getRequestDispatcher("patientManagment.jsp");
			dis.forward(request, response);
		}
		
		else if(page.equals("ambulanceAppointment")) {
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
