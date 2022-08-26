package com.buimanhthanh.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buimanhthanh.service.CategoriesService;
import com.buimanhthanh.service.CustomerService;
import com.buimanhthanh.service.ProductsService;
import com.buimanhthanh.service.StaffService;
import com.buimanhthanh.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductsService productsService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private StaffService staffService;

	@Autowired
	private UserService userService;

	@Autowired
	private CategoriesService categoriesService;

	@GetMapping(value = { "/", "" })
	public String index() {
		return "adminIndex";
	}

	@GetMapping(value = { "/table" })
	public String table() {
		return "adminTable";
	}

	@GetMapping(value = { "/animation" })
	public String animation() {
		return "adminAnimation";
	}

	@GetMapping(value = { "/border" })
	public String border() {
		return "adminBorder";
	}

	@GetMapping(value = { "/color" })
	public String color() {
		return "adminColor";
	}

	@GetMapping(value = { "/other" })
	public String other() {
		return "adminOther";
	}
	
	@GetMapping(value = { "/product" })
	public String product(Model model) {
		model.addAttribute("type", "Products");
		model.addAttribute("listObject", productsService.getAllProduct());
		return "adminTable";
	}

	@GetMapping(value = { "/customer" })
	public String customer(Model model) {
		model.addAttribute("type", "Customers");
		model.addAttribute("listObject", customerService.getAllCustomer());
		return "adminTable";
	}

	@GetMapping(value = { "/staff" })
	public String staff(Model model) {
		model.addAttribute("type", "Staff");
		model.addAttribute("listObject", staffService.getAllStaff());
		return "adminTable";
	}

	@GetMapping(value = { "/user" })
	public String user(Model model) {
		model.addAttribute("type", "User");
		model.addAttribute("listObject", userService.getAllUsers());
		return "adminTable";
	}

	@GetMapping(value = { "/categories" })
	public String categories(Model model) {
		model.addAttribute("type", "Categories");
		model.addAttribute("listObject", categoriesService.getAllCategories());
		return "adminTable";
	}


}
