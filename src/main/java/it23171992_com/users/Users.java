package it23171992_com.users;

public class Users {
	private String name;
	private String telephoneNumber;
	private String address;
	private String email;
	private String dob;
	
	public Users(String name, String telephoneNumber, String address, String email,String dob) {
		super();
		this.name = name;
		this.telephoneNumber = telephoneNumber;
		this.address = address;
		this.email = email;
		this.dob = dob;
	}

	public String getName() {
		return name;
	}

	public String getTelephoneNumber() {
		return telephoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getDob() {
		return dob;
	}
	
	
}
