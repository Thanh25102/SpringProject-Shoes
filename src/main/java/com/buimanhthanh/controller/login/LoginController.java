package com.buimanhthanh.controller.login;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.buimanhthanh.dto.CustomersDTO;
import com.buimanhthanh.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;

	@GetMapping(value = { "/login" })
	public String login() {
		return "loginLayout";
	}

	@GetMapping(value = { "/register" })
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new CustomersDTO());
		mv.setViewName("registerLayout");
		return mv;
	}

	@PostMapping(value = { "/register" })
	public String register(@ModelAttribute(value = "user") @Valid CustomersDTO customersDTO, BindingResult result,
			Model model) {
		String errMsg = customersDTO.isValidPasswordConfirm() ? null : "password does not match";
		model.addAttribute("errMsgConfirmPass", errMsg);
		if (result.hasErrors() || errMsg != null) {
			return "registerLayout";
		} else {
			if (loginService.register(customersDTO)) {
				return "redirect:/login";
			} else {
				model.addAttribute("errMsgUserName", "Username already exists");
				return "registerLayout";
			}
		}
	}

	@GetMapping(value = { "/forgot-password" })
	public String forgotPassword() {
		return "forgotPasswordLayout";
	}
	@GetMapping(value= {"/error"})
	public String error() {
		return "adminError";
	}
}
