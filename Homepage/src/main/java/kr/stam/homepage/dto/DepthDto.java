package kr.stam.homepage.dto;

public class DepthDto {

	int menuCode;
	String menuParents,menuContents;
	public int getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(int menuCode) {
		this.menuCode = menuCode;
	}
	public String getMenuParents() {
		return menuParents;
	}
	public void setMenuParents(String menuParents) {
		this.menuParents = menuParents;
	}
	public String getMenuContents() {
		return menuContents;
	}
	public void setMenuContents(String menuContents) {
		this.menuContents = menuContents;
	}

	
	
}
