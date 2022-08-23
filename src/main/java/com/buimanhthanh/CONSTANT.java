package com.buimanhthanh;

public class CONSTANT {
    public static final Integer PAGE_SIZE = 16;
    public static final String ADMIN = "ROLE_ADMIN";
    public static final String USER = "ROLE_USER";
    
    enum Role{
    	USER("ROLE_USER"),ADMIN("ROLE_ADMIN");
    	
    	private String roleValue;
    	
    	private Role(String roleValue) {
			this.setRoleValue(roleValue);
		}

		public String getRoleValue() {
			return roleValue;
		}

		public void setRoleValue(String roleValue) {
			this.roleValue = roleValue;
		}
    }
}
