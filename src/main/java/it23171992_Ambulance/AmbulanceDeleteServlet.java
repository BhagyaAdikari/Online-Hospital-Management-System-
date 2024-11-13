package it23171992_Ambulance;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it23171992_com.users.AdminDashboardDBUtil;

@WebServlet("/AmbulanceDeleteServlet")
public class AmbulanceDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("");
		
		boolean isTrue = AdminDashboardDBUtil.deleteAmbulance(id);
		
		if(isTrue==true) {
			List<Ambulance> ambDetails = new ArrayList<Ambulance>();
			ambDetails = AdminDashboardDBUtil.getAmbulanceDetails();
			request.setAttribute("ambDetails", ambDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AmbulanceManagement.jsp");
			dis.forward(request, response);
		}
	}

}
