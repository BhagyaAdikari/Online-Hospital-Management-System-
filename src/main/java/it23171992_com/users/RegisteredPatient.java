package it23171992_com.users;

import java.util.UUID;

public class RegisteredPatient extends Users{
	private String regUserId;
	private String userName;
	private String password;
	private String profilePicture;
	
	public RegisteredPatient(String name, String telephoneNumber, String address, String email,String dob,String regUserId,String userName,String password,String profilePicture) {
		super(name, telephoneNumber, address, email,dob);
		this.regUserId = regUserId;
		this.userName = userName;
		this.password = password;
		this.profilePicture = profilePicture;
	}
	
	public String generateID() {
		String uniquePart = UUID.randomUUID().toString().substring(0, 8);
		return "HMS-RU-" + uniquePart;
	}

	public String getRegUserId() {
		return regUserId;
	}

	public String getUserName() {
		return userName;
	}

    public String getPassword() {
        return password; // This getter method should be accessible
    }

	public String getProfilePicture() {
		return profilePicture;
	}
	
	
	
}
