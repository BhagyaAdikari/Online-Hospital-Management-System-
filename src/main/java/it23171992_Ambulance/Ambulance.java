package it23171992_Ambulance;

import java.util.UUID;

public class Ambulance {
	
	private String ambulanceNumber;
	private String registeredYear;
	private String chassisNumber;
	private String driverId;
	private String driverName;
	
	public Ambulance(String ambulanceNumber, String registeredYear, String chassisNumber, String driverId,String driverName) {
		super();
		this.ambulanceNumber = ambulanceNumber;
		this.registeredYear = registeredYear;
		this.chassisNumber = chassisNumber;
		this.driverId = driverId;
		this.driverName = driverName;
	}
	
	public String getDriverName() {
		return driverName;
	}

	public String getAmbulanceNumber() {
		return ambulanceNumber;
	}

	public String getRegisteredYear() {
		return registeredYear;
	}

	public String getChassisNumber() {
		return chassisNumber;
	}

	public String getDriverId() {
		return driverId;
	}
	
	public String generateID() {
		String uniquePart = UUID.randomUUID().toString().substring(0, 8);
		return "HMS-Amb-" + uniquePart;
	}

}
