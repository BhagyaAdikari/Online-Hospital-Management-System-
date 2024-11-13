package it23171992_AmbulanceDriver;

import java.util.UUID;

import it23171992_com.users.Users;

public class RegisterAmbulanceDriver extends Users{
	
	private String driverId;
	private String licenseNumber;
	private int yearOfExperience;
	private String password;

	public RegisterAmbulanceDriver(String name, String telephoneNumber, String address, String email, String dob,String driverId,String licenseNumber,int yearOfExperience,String password) {
		super(name, telephoneNumber, address, email, dob);
		
		this.driverId = driverId;
		this.licenseNumber = licenseNumber;
		this.yearOfExperience = yearOfExperience;
		this.password = password;

	}
	
	public String getPassword() {
		return password;
	}

	public String getLicenseNumber() {
		return licenseNumber;
	}

	public int getYearOfExperience() {
		return yearOfExperience;
	}
	
	public String generateId() {
		String uniquePart = UUID.randomUUID().toString().substring(10, 20);
		return "AMBDRV"+uniquePart;
	}

	public String getDriverId() {

		return driverId;
	}

}
