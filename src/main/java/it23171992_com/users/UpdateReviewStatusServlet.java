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

import it23171992_MedicationReports.MedicationReports;

@WebServlet("/UpdateReviewStatusServlet")
public class UpdateReviewStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileId = request.getParameter("fileID");
		String action = request.getParameter("action");
		
		boolean isTrue = AdminDashboardDBUtil.updateReportReviewStatus(fileId, action);
		
		if(isTrue==true) {
			List<MedicationReports> fileDetails = new ArrayList<MedicationReports>();
			fileDetails = AdminDashboardDBUtil.getMedicationReportsDetailsAdmin();
			request.setAttribute("fileDetails",fileDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ReviewPatientMedicationReports.jsp");
			dis.forward(request, response);
			
		}
	}

}
