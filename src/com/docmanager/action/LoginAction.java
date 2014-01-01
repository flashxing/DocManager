package com.docmanager.action;

import com.docmanager.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	LoginService loginService;
	String username;
	String password;
	
	public String login() throws Exception {
		boolean result = loginService.findUser(username, password);
    	if(result){
    		if(username.equals("admin"))
    			return "admin_success";
    		else
    		return "success";
    	}
		else
			return "failure";
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUsername() {
		return username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
		
}
