package com.buimanhthanh.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.buimanhthanh.dto.UsersDTO;
import com.buimanhthanh.service.UserService;

public class HandleLoginSuccess implements AuthenticationSuccessHandler{
	
	@Autowired
	private UserService userDetailService;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		UsersDTO user =  this.userDetailService.getUsers(authentication.getName()); 
		request.getSession().setAttribute("currentUser", user);
		response.sendRedirect("/");
	}

}
