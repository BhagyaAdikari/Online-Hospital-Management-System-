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

@WebServlet("/UpdateDriverDetailsServlet")
public class UpdateDriverDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("driverId");
		String name = request.getParameter("name");
		String licenceNumber = request.getParameter("licenseNum");
		String password = request.getParameter("pass");
		String Email = request.getParameter("email");
		String Telephone = request.getParameter("telep");
		String Address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String exp = request.getParameter("exp");
		
		try {
			if(id==null||name==null || licenceNumber==null|| password==null|| Email==null|| Telephone==null|| Address==null|| dob==null||exp==null) {
				throw new CheckNullValuesException("Null values are came to the UpdateDriverDetailsServlet");
			}
		}catch(CheckNullValuesException e) {
			e.getMessage();
		}finally {
			boolean isTrue=UserDbUtil.updateRegisteredAmbulanceDriverDetails(id,name,licenceNumber,password,Email,Telephone,Address,dob,exp);
			
			if(isTrue==true) {
				List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();
				ambDriver = AdminDashboardDBUtil.getAmbulanceDriverDetails();
				request.setAttribute("ambDriver", ambDriver);
				
				
				RequestDispatcher dis = request.getRequestDispatcher("AmbulanceDriverManagement.jsp");
				dis.forward(request, response);
			}
			else {
				System.out.println("not updated");
			}
		}
		

	}

}
