package it23171992_AmbulanceAppointment;

public class AmbulanceAppointmentClass {
	private int appointmentId;
	public String appointDate;
	public String appointTime;
	public String purpose;
	public String applicantName;
	public String applicantPhoneNumber;
	public String patientLocation;
	public String ambulanceNumber;
	public String appointmentStatus;
	public String droppedLocation;
	public Double fee;
	
	
	public AmbulanceAppointmentClass(int appointmentId, String appointDate, String appointTime, String purpose,
			String applicantName, String applicantPhoneNumber, String patientLocation, String ambulanceNumber,
			String appointmentStatus, String droppedLocation,Double fee) {
		super();
		this.appointmentId = appointmentId;
		this.appointDate = appointDate;
		this.appointTime = appointTime;
		this.purpose = purpose;
		this.applicantName = applicantName;
		this.applicantPhoneNumber = applicantPhoneNumber;
		this.patientLocation = patientLocation;
		this.ambulanceNumber = ambulanceNumber;
		this.appointmentStatus = appointmentStatus;
		this.droppedLocation = droppedLocation;
		this.fee = fee;
	}


	public double getFee() {
		return fee;
	}


	public int getAppointmentId() {
		return appointmentId;
	}


	public String getAppointDate() {
		return appointDate;
	}


	public String getAppointTime() {
		return appointTime;
	}


	public String getPurpose() {
		return purpose;
	}


	public String getApplicantName() {
		return applicantName;
	}


	public String getApplicantPhoneNumber() {
		return applicantPhoneNumber;
	}


	public String getPatientLocation() {
		return patientLocation;
	}


	public String getAmbulanceNumber() {
		return ambulanceNumber;
	}


	public String getAppointmentStatus() {
		return appointmentStatus;
	}


	public String getDroppedLocation() {
		return droppedLocation;
	}


	
	
	
}
