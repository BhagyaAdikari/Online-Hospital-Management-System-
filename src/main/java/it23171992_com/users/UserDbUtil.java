package it23171992_com.users;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import it23171992_dataBaseConnection.HMSDBConnect;
import it23171992_AmbulanceAppointment.AmbulanceAppointmentClass;
import it23171992_AmbulanceDriver.RegisterAmbulanceDriver;
import it23171992_MedicationReports.MedicationReports;

public class UserDbUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess = false;

	public static boolean registeringUsers(String name, String telephone, String address, String email, String dob,
			String username, String password, String PicName, String ID) {

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into registeredUser values('" + ID + "','" + name + "','" + telephone + "','" + address
					+ "','" + email + "','" + dob + "','" + username + "','" + password + "','" + PicName + "')";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean registerAmbulanceDrivers(String name, String telephone, String address, String email,
			String dob, String driverId, String licenseNumber, int yearsOfExperience) {

		try {
			System.out.println("im in db util");
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into ambulancedriver (driverId,fullName,telephoneNumber,address,email,dob,licenseNumber,drivingExperience) values('"
					+ driverId + "','" + name + "','" + telephone + "','" + address + "','" + email + "','" + dob
					+ "','" + licenseNumber + "','" + yearsOfExperience + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;

	}

	public static boolean validate(String username, String password) {

		try {
			System.out.println("im in user db");
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registeredUser where userName='" + username + "' and passwordU='" + password
					+ "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
				System.out.println(isSuccess);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<RegisteredPatient> getRegUserProfileDetails(String username, String password) {

		List<RegisteredPatient> patientDetails = new ArrayList<RegisteredPatient>();

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registeredUser where username='" + username + "' and passwordU='" + password
					+ "'";

			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				String userId = rs.getString(1);
				String name = rs.getString(2);
				String telephone = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String dob = rs.getString(6);
				String userName = rs.getString(7);
				String pass = rs.getString(8);
				String propic = rs.getString(9);

				RegisteredPatient regp = new RegisteredPatient(name, telephone, address, email, dob, userId, userName,
						pass, propic);
				patientDetails.add(regp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(patientDetails);
		return patientDetails;
	}

	public static boolean deleteRegisteredUser(String userId) {

		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from registeredUser where userId = '" + userId + "'";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static boolean updateRegisteredUserDetails(String id, String name, String telephone, String address,
			String email, String username, String picName) {

		boolean isTrue = false;

		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update registeredUser set fullName='" + name + "',telephoneNumber='" + telephone
					+ "',address='" + address + "',email='" + email + "',profilePicture='" + picName
					+ "' where userId='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isTrue = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isTrue;
	}

	public static boolean updateRegisteredAmbulanceDriverDetails(String id, String name, String licenceNumber,
			String password, String Email, String Telephone, String Address, String dob, String exp) {

		boolean isTrue = false;

		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update ambulanceDriver set fullName='"+name+"',telephoneNumber='"+Telephone+"',address='"+Address+"',email='"+Email+"',dob='"+dob+"',licenseNumber='"+ licenceNumber + "',drivingExperience='"+ exp +"',passwordD='" + password + "' where driverId='"+ id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isTrue = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isTrue;
	}

	public static List<RegisteredPatient> getRegisteredPatientDetails(String id) {
		List<RegisteredPatient> regPat = new ArrayList<RegisteredPatient>();

		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registeredUser where userId='" + id + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				String userId = rs.getString(1);
				String name = rs.getString(2);
				String telephone = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String dob = rs.getString(6);
				String userName = rs.getString(7);
				String pass = rs.getString(8);
				String propic = rs.getString(9);

				RegisteredPatient regp = new RegisteredPatient(name, telephone, address, email, dob, userId, userName,
						pass, propic);
				regPat.add(regp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return regPat;
	}

	public static boolean updatePatientDetails(String id, String name, String uname, String password, String Email,
			String Telephone, String Address, String dob) {
		boolean isSuccess = false;

		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update registeredUser set fullName='" + name + "',telephoneNumber='" + Telephone
					+ "',address='" + Address + "',email='" + Email + "',userName='" + uname + "',passwordU='"
					+ password + "',dob='" + dob + "' where userId='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

		} catch (Exception e) {

		}

		return isSuccess;
	}

	public static boolean changeRegPatientPassword(String userId, String oldPassword, String newPassword) {

		boolean isTrue = false;
		boolean isCorrect = false;

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String checkOldPassword = "select passwordU from registeredUser where userId='" + userId + "'";
			rs = stmt.executeQuery(checkOldPassword);

			if (rs.next()) {
				String currentPassword = rs.getString(1);
				if (currentPassword.equals(oldPassword)) {
					isCorrect = true;
				}
			}

			if (isCorrect == true) {
				String changePassword = "update registeredUser set passwordU='" + newPassword + "' where userid='"
						+ userId + "'";
				int rs = stmt.executeUpdate(changePassword);

				if (rs > 0) {
					isTrue = true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isTrue;

	}

	public static boolean uploadMedicationReports(String remark, String fileName, String userId) {
		boolean isSuccess = false;

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into regUserMedicationReports values(0,'" + remark + "','" + fileName + "','" + userId
					+ "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<MedicationReports> getDetailsMedicationReports(String userName, String password) {

		List<MedicationReports> fileDetails = new ArrayList<MedicationReports>();

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select m.fileId,m.fileName,m.remark,m.userId from regUserMedicationReports m,registeredUser r where m.userId=r.userId and userName='"
					+ userName + "' and passwordU='" + password + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String fileId = rs.getString(1);
				String fileName = rs.getString(2);
				String remark = rs.getString(3);
				String userId = rs.getString(4);

				MedicationReports mReport = new MedicationReports(fileId, remark, fileName, userId);
				fileDetails.add(mReport);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return fileDetails;
	}

	public static List<MedicationReports> getDetailsMedicationReportsWithoutUserCredential(String userId) {

		List<MedicationReports> fileDetails = new ArrayList<MedicationReports>();

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select fileId,fileName,remark,userId from regUserMedicationReports where userId='" + userId
					+ "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String fileId = rs.getString(1);
				String fileName = rs.getString(2);
				String remark = rs.getString(3);
				String userId1 = rs.getString(4);

				MedicationReports mReport = new MedicationReports(fileId, remark, fileName, userId1);
				fileDetails.add(mReport);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return fileDetails;
	}

	public static boolean deleteMedicationReport(String fileId) {

		boolean isSuccess = false;

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from regUserMedicationReports where fileId='" + fileId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
	
	public static boolean deleteAmbulanceDriver(String driverId) {

		boolean isSuccess = false;

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from ambulanceDriver where driverId='" + driverId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean validateDriverCredentials(String username, String password) {
		boolean isSuccess = false;

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select email,passwordD from ambulanceDriver where email='" + username + "' and passwordD='"
					+ password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<RegisterAmbulanceDriver> getAmbulanceDriverDetailsAccordingUserCredentials(String username,
			String password) {

		List<RegisterAmbulanceDriver> ambDriver = new ArrayList<RegisterAmbulanceDriver>();

		try {
			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from ambulanceDriver where email='" + username + "' and passwordD='" + password
					+ "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String driverId = rs.getString(1);
				String driverName = rs.getString(2);
				String telephone = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String dob = rs.getString(6);
				String licenseNum = rs.getString(7);
				int exp = rs.getInt(8);
				String passwordD = rs.getString(9);

				System.out.println(driverId + " " + driverName);

				RegisterAmbulanceDriver aDriver = new RegisterAmbulanceDriver(driverName, telephone, address, email,
						dob, driverId, licenseNum, exp, passwordD);
				ambDriver.add(aDriver);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ambDriver;

	}

	public static List<AmbulanceAppointmentClass> getAmbulanceAppointmentDetails(String username, String password) {
		List<AmbulanceAppointmentClass> ambAppointments = new ArrayList<AmbulanceAppointmentClass>();

		try {

			con = HMSDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select app.* from ambulance a,ambulanceDriver d,ambulanceAppointment app where a.driverId=d.driverId and a.ambulanceNumber=app.ambulanceNumber and d.email='"
					+ username + "' and d.passwordD='" + password + "' and app.ambulanceNumber is not null";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int appointmentId = rs.getInt(1);
				String appointDate = rs.getString(2);
				String appointTime = rs.getString(3);
				String purpose = rs.getString(4);
				String applicantName = rs.getString(5);
				String applicantPhoneNumber = rs.getString(6);
				String patientLocation = rs.getString(7);
				String ambulanceNumber = rs.getString(8);
				String appointmentStatus = rs.getString(9);
				String DroppedLocation = rs.getString(10);
				double fee = rs.getDouble(11);

				AmbulanceAppointmentClass a = new AmbulanceAppointmentClass(appointmentId, appointDate, appointTime,
						purpose, applicantName, applicantPhoneNumber, patientLocation, ambulanceNumber,
						appointmentStatus, DroppedLocation,fee);
				ambAppointments.add(a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return ambAppointments;
	}

}
