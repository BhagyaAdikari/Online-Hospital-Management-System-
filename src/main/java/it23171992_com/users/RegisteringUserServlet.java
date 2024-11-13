package it23171992_com.users;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(
		fileSizeThreshold=1024*1024,
		maxFileSize=1024*1024*10,
		maxRequestSize=1024*1024*11)
@WebServlet("/RegisteringUserServlet")
public class RegisteringUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String telephone = request.getParameter("tele");
		String address = request.getParameter("add");
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		Part part = request.getPart("propic");
		String PicName = part.getSubmittedFileName();
        String savePath = "E:\\JavaProjects\\Hospital_Management_System\\src\\main\\webapp\\resources\\images\\profilePictures"; // Make sure this is a valid, writeable directory
        Path filePath = Paths.get(savePath, PicName);
        
        // Write file to disk
        part.write(filePath.toString());
		
		RegisteredPatient regp = new RegisteredPatient("","", "", "", "","", "", "", "");
		String ID = regp.generateID();
		
		
		boolean isTrue = UserDbUtil.registeringUsers(name, telephone, address, email, dob, username, password, PicName, ID);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("loginSignUp.jsp");
			dis.forward(request, response);
		}
	}

}
