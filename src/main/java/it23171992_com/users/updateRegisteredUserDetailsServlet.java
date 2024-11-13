package it23171992_com.users;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

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
@WebServlet("/updateRegisteredUserDetailsServlet")
public class updateRegisteredUserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("userId");
		String name = request.getParameter("name");
		String telephone = request.getParameter("tel");
		String address = request.getParameter("address");
		String email = request.getParameter("mail");
		String username = request.getParameter("uname");
		
		Part part = request.getPart("updatePic");
		String PicName = part.getSubmittedFileName();
        String savePath = "E:\\JavaProjects\\Hospital_Management_System\\src\\main\\webapp\\resources\\images\\profilePictures"; // Make sure this is a valid, writeable directory
        Path filePath = Paths.get(savePath, PicName);
        
        // Write file to disk
        part.write(filePath.toString());
        System.out.println("pic name"+PicName);
        
        boolean isTrue = UserDbUtil.updateRegisteredUserDetails(id, name, telephone, address, email, username, PicName);
        System.out.println("Update Result: " + isTrue);
        if(isTrue==true) {
        	List<RegisteredPatient> patientDetails = UserDbUtil.getRegisteredPatientDetails(id);
        	request.setAttribute("patientDetails", patientDetails);
        	
        	RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
        	dis.forward(request, response);
        }
		
	}

}
