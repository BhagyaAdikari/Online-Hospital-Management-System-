package it23171992_com.users;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import it23171992_dataBaseConnection.HMSDBConnect;
import it23171992_Ambulance.Ambulance;
import it23171992_AmbulanceAppointment.AmbulanceAppointmentClass;
import it23171992_AmbulanceDriver.RegisterAmbulanceDriver;
import it23171992_MedicationReports.MedicationReports;

public class AdminDashboardDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess = false;
	
	public static boolean validateAdminCredential(String username,String password) {
		boolean isSuccess = false;
		
		try {
			System.out.println("ADMIN DB UTIL");
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from adminUserCredentials where adminUsername='"+username+"' and adminPassword='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
				System.out.println("DB util"+isSuccess);
			}
			
			
		}catch(Exception e) {
			
		}
		
		return isSuccess;
	}
	
	public static List<RegisteredPatient> getRegisteredPatientDetails(){
		
		List<RegisteredPatient> getRegPatient = new ArrayList<RegisteredPatient>();
		
		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select userId,fullName,telephoneNumber,address,email,dob,userName,passwordU,profilePicture from registeredUser";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String userId = rs.getString(1);
	            String fullName = rs.getString(2);
	            String telephoneNumber = rs.getString(3);
	            String address = rs.getString(4);
	            String email = rs.getString(5);
	            String dob = rs.getString(6);
	            String userName = rs.getString(7);
	            String passwordU = rs.getString(8); 
	            String profilePicture = rs.getString(9);
	            
	            
	            
	            
	            RegisteredPatient r = new RegisteredPatient(fullName,telephoneNumber,address,email,dob,userId,userName,passwordU,passwordU);
	            getRegPatient.add(r);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return getRegPatient;
		
	}
	
	public static List<Ambulance> getAmbulanceDetails(){
		
		List<Ambulance> amb = new ArrayList<Ambulance>();
		
		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select a.ambulanceNumber,a.registeredYear,a.chassisNumber,a.driverId,ad.fullName from ambulance a left outer join ambulanceDriver ad on a.driverId=ad.driverId";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String ambNumber = rs.getString(1);
	            String regYear = rs.getString(2);
	            String chassiNum = rs.getString(3);
	            String driverId = rs.getString(4);
	            String driverName = rs.getString(5);
	           
	            if(driverId == null){
	            	driverName = "Driver not assigned yet";
	            	driverId = "_";
	            }
	            
	            System.out.println(driverId+" "+driverName);
	            
	            Ambulance a = new Ambulance(ambNumber,regYear,chassiNum,driverId,driverName);
	            amb.add(a);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return amb;
		
	}
	
	public static List<RegisterAmbulanceDriver> getAmbulanceDriverDetails(){
		
		List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();
		
		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from ambulanceDriver";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String driverId = rs.getString(1);
	            String driverName = rs.getString(2);
	            String telephone = rs.getString(3);
	            String address = rs.getString(4);
	            String email = rs.getString(5);
	            String dob = rs.getString(6);
	            String licenseNum = rs.getString(7);
	            int exp = rs.getInt(8);
	            String password = rs.getString(9);
	            
	            System.out.println(driverId+" "+driverName);
	            
	            RegisterAmbulanceDriver aDriver = new RegisterAmbulanceDriver(driverName,telephone,address,email,dob,driverId,licenseNum,exp,password);
	            ambDriver.add(aDriver);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ambDriver;
		
	}
	
	public static List<MedicationReports> getMedicationReportsDetailsAdmin(){
		
		List<MedicationReports> fileDetails = new ArrayList<MedicationReports>();
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select fileId,fileName,remark,userId from regUserMedicationReports";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String fileId = rs.getString(1);
				String fileName = rs.getString(2);
				String remark = rs.getString(3);
				String userId1 = rs.getString(4);
				
				MedicationReports mReport = new MedicationReports(fileId,remark,fileName,userId1);
				fileDetails.add(mReport);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return fileDetails;
		
	}
	
	public static boolean updateReportReviewStatus(String fileId,String action) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update regUserMedicationReports set approval='"+action+"' where fileId='"+fileId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteAmbulance(String id) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from ambulance where ambulanceNumber='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteAmbulanceDriver(String id) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from ambulanceDriver where driverId='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteAmbulanceAppointment(String id) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from ambulanceAppointment where appointmentId='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<AmbulanceAppointmentClass> getAmbulanceAppointmentDetails() {
		List<AmbulanceAppointmentClass> ambAppointments = new ArrayList<AmbulanceAppointmentClass>();
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from ambulanceAppointment";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int appointmentId=rs.getInt(1);
				String appointDate=rs.getString(2);
				String appointTime=rs.getString(3);
				String purpose=rs.getString(4);
				String applicantName=rs.getString(5);
				String applicantPhoneNumber=rs.getString(6);
				String patientLocation=rs.getString(7);
				String ambulanceNumber=rs.getString(8);
				String appointmentStatus=rs.getString(9);
				String DroppedLocation=rs.getString(10);
				Double fee = rs.getDouble(11);
				
				AmbulanceAppointmentClass a = new AmbulanceAppointmentClass(appointmentId,appointDate,appointTime,purpose,applicantName,applicantPhoneNumber,patientLocation,ambulanceNumber,appointmentStatus,DroppedLocation,fee);
				ambAppointments.add(a);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ambAppointments;
	}
	
	public static List<Ambulance> getAvailableAmbulances() {
	    List<Ambulance> availableAmbulance = new ArrayList<>();

	    try {
	        con = HMSDBConnect.getConnection();
	        stmt = con.createStatement();
	        
	        // Corrected SQL query with closed parentheses
	        String sql = "SELECT * FROM ambulance a WHERE a.ambulanceNumber NOT IN (SELECT app.ambulanceNumber FROM ambulanceAppointment app WHERE app.appointmentStatus = 'ASSIGNED' AND app.ambulanceNumber IS NOT NULL)";
	        
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            String ambulanceNumber = rs.getString("ambulanceNumber");
	            String registeredYear = rs.getString("registeredYear");
	            String chassisNumber = rs.getString("chassisNumber");
	            String driverId = rs.getString("driverId");

	            Ambulance ambulance = new Ambulance(ambulanceNumber, registeredYear, chassisNumber, driverId, null);
	            availableAmbulance.add(ambulance);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return availableAmbulance;
	}
	
	public static boolean assignAmbulanceAndUpdateStatus(String appointmentId,String ambulanceNumber) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update ambulanceAppointment set ambulanceNumber='"+ambulanceNumber+"' , appointmentStatus='ASSIGNED' where appointmentId='"+appointmentId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean cancelAppointmentFromDriver(String appointmentId,String status) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update ambulanceAppointment set appointmentStatus='"+status+"' where appointmentId='"+appointmentId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean completeAppointmentFromDriver(String appointmentId,String status,String fee) {
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update ambulanceAppointment set appointmentStatus='"+status+"',totalFee='"+fee+"' where appointmentId='"+appointmentId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateAppointmentDetails(String id,String date,String time,String destination) {
		
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update ambulanceAppointment set appointDate='"+date+"',appointTime='"+time+"',DroppedLocation='"+destination+"' where appointmentId='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static boolean deleteAdminPatient(String id) {
		
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from registeredUser where userId='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

	
	
}
