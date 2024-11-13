package it23171992_AmbulanceDriver;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it23171992_com.users.UserDbUtil;
import it23171992_userDefinedExceptions.CheckNullValuesException;

@WebServlet("/RegisteringAmbulanceDriversServlet")
public class RegisteringAmbulanceDriversServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String telephone = request.getParameter("telep");
		String address = request.getParameter("add");
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String LicenseNumber = request.getParameter("licenseNum");
		int yoe = Integer.parseInt(request.getParameter("years"));
		String password = request.getParameter("password");
		try {
		    if(name==null|| telephone==null|| address==null|| email==null|| dob==null|| LicenseNumber==null|| yoe==0||password==null) {
		    	throw new CheckNullValuesException("Null values are came to the RegisteringAmbulanceDriversServlet");
		    }
		} catch (CheckNullValuesException e) {
		   
		    e.getMessage();
		} finally {
			RegisterAmbulanceDriver rad = new RegisterAmbulanceDriver(name, telephone, address, email, dob, null, LicenseNumber, yoe,password);
			String diverId = rad.generateId();
			
			boolean isTrue = UserDbUtil.registerAmbulanceDrivers(name, telephone, address, email, dob, diverId, LicenseNumber, yoe);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("AmbulanceDriverManagement.jsp");
				dis.forward(request, response);
			}
		}
		
		
	}

}