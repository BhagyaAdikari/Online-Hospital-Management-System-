package it23171992_Ambulance;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it23171992_userDefinedExceptions.CheckNullValuesException;

@WebServlet("/AmbulanceRegisterServlet")
public class AmbulanceRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String regYear = request.getParameter("regYear");
		String ChassisNumber = request.getParameter("chasnum");
		String driverId = request.getParameter("driverId");
		
		try {
			if(regYear == null || ChassisNumber==null || driverId==null) {
				throw new CheckNullValuesException("Null values are came to the AmbulanceRegisterServlet!");
			}
		}catch(CheckNullValuesException e) {
			e.getMessage();
		}finally {
			Ambulance a = new Ambulance("","","","","");
			
			
			String ambNumber=a.generateID();
			
			boolean isTrue = AmbulanceDbUtil.insertAmbulance(ambNumber, regYear, ChassisNumber,driverId);
			
			if(isTrue==true) {
				RequestDispatcher dis = request.getRequestDispatcher("AmbulanceManagement.jsp");
				dis.forward(request, response);
			}
		}
	}

}
