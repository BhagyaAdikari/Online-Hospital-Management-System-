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

@WebServlet("/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userId");
		String name = request.getParameter("name");
		String uname = request.getParameter("uname");
		String password = request.getParameter("pass");
		String Email = request.getParameter("add");
		String Telephone = request.getParameter("telephone");
		String Address = request.getParameter("address");
		String dob = request.getParameter("dob");
		
		boolean isTrue = UserDbUtil.updatePatientDetails(id,name,uname,password,Email,Telephone, Address,dob);
		
		if(isTrue==true) {
			List<RegisteredPatient> getRegPatient = new ArrayList<RegisteredPatient>();
			getRegPatient = AdminDashboardDBUtil.getRegisteredPatientDetails();
			request.setAttribute("getRegPatient",getRegPatient);
			
			RequestDispatcher dis = request.getRequestDispatcher("patientManagment.jsp");
			dis.forward(request, response);
		}
				
	}

}
