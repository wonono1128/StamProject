package kr.stam.homepage.dto;

public class LoginDto {
	String managerId;
	String managerPw;
	String managerName;

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getManagerPw() {
		return managerPw;
	}

	public void setManagerPw(String managerPw) {
		this.managerPw = managerPw;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

}
