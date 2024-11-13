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
import it23171992_com.users.UserDbUtil;

@WebServlet("/TrvelFeeCalculatorServlet")
public class TrvelFeeCalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String distance = request.getParameter("distance");
		double Distance = Double.parseDouble(distance);
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		
		TravelFeeCalculatorClass tFee = new TravelFeeCalculatorClass();
		double totalFee = tFee.calcTravelFee(Distance);
		
		System.out.println("fee : "+totalFee);
		
		if(totalFee > 0 ) {
			
			request.setAttribute("Distance", Distance);
			request.setAttribute("totalFee", totalFee);
			
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
