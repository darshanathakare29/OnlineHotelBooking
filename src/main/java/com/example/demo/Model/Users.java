package com.example.demo.Model;

import java.util.UUID;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Users {
 
	@Id
	private String id;
	private String uname;
	private String uemail;
	private String upass;
	private String ucpass;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUcpass() {
		return ucpass;
	}
	public void setUcpass(String ucpass) {
		this.ucpass = ucpass;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", uemail=" + uemail + ", upass=" + upass + ", ucpass=" + ucpass
				+ "]";
	}

	
	
}
