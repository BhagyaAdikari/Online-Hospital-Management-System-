package it23171992_Ambulance;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import it23171992_dataBaseConnection.HMSDBConnect;

public class AmbulanceDbUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertAmbulanceAppointment(String date,String time,String purpose,String applicantName,String applicantPhoneNumber,String location,String ambNumber,String destination) {
		
		boolean isSuccess=false;
		
		try {
			
				System.out.println("I am with user id");
				con = HMSDBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into ambulanceAppointment(appointmentId,appointDate,appointTime,purpose,applicantName,applicantPhoneNumber,patientLocation,ambulanceNumber,DroppedLocation) values(0,'"+date+"','"+time+"','"+purpose+"','"+applicantName+"','"+applicantPhoneNumber+"','"+location+"',null,'"+destination+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean insertAmbulance(String ambulanceNumber,String registeredYear,String chassisNumber,String driverId){
		
		boolean isSuccess = false;
		
		try {
			
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into ambulance(ambulanceNumber,registeredYear,chassisNumber,driverId) values('"+ambulanceNumber+"','"+registeredYear+"','"+chassisNumber+"','"+driverId+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
}
