package it23171992_AmbulanceAppointment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it23171992_Ambulance.AmbulanceDbUtil;
import it23171992_userDefinedExceptions.CheckNullValuesException;

@WebServlet("/InsertAmbulanceAppointmentDetailsServlet")
public class InsertAmbulanceAppointmentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String purpose = request.getParameter("purpose");
		String applicantName = request.getParameter("applicantName");
		String applicantPhoneNumber = request.getParameter("phone");
		String patientName = request.getParameter("patientName");		
		String location = request.getParameter("location");
		String Destination = request.getParameter("destination");
		
		try {
			if(date==null||time==null || purpose==null|| applicantName==null|| applicantPhoneNumber==null||patientName==null ||location==null ||Destination==null) {
				throw new CheckNullValuesException("Null values are came to the InsertAmbulanceAppointmentDetailsServlet");
			}
		}catch(CheckNullValuesException e) {
			e.getMessage();
		}finally {
			boolean isTrue = AmbulanceDbUtil.insertAmbulanceAppointment(date, time, purpose , applicantName, applicantPhoneNumber, location, null, Destination);
			
			
			if(isTrue==true) {
				RequestDispatcher dis = request.getRequestDispatcher("ambulanceAppointmentSuccess.jsp");
				dis.forward(request, response);
				System.out.println("true");
			}
		}		
		
	}

}
