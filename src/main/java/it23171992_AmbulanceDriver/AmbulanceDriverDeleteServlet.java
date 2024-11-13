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

import it23171992_com.users.AdminDashboardDBUtil;
import it23171992_com.users.UserDbUtil;
import it23171992_userDefinedExceptions.CheckNullValuesException;

@WebServlet("/AmbulanceDriverDeleteServlet")
public class AmbulanceDriverDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("driverId");
		
		try {
			if(id==null) {
				throw new CheckNullValuesException("Null values are came to the AmbulanceDriverDeleteServlet");
			}
		}catch(CheckNullValuesException e) {
			e.getMessage();
		}finally {
			boolean isTrue = UserDbUtil.deleteAmbulanceDriver(id);
			
			if(isTrue==true) {
				List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();
				ambDriver = AdminDashboardDBUtil.getAmbulanceDriverDetails();
				request.setAttribute("ambDriver", ambDriver);
				
				RequestDispatcher dis = request.getRequestDispatcher("AmbulanceDriverManagement.jsp");
				dis.forward(request, response);
			}
		}		
		
	}

}
