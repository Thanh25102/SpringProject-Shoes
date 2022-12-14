package com.buimanhthanh.controller.admin;

import com.buimanhthanh.dto.*;
import com.buimanhthanh.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductsService productsService;

	@Autowired
	private ProductImagesService productImagesService;

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
	public String product(Model model, @RequestParam(required = false, defaultValue = "-1") Integer id,
			@RequestParam(required = false, defaultValue = "-1") Integer detailId,
			@RequestParam(required = false, defaultValue = "null") String action,
			@RequestParam(required = false, defaultValue = "null") String actionDetail) {
		model.addAttribute("url", "product");
		model.addAttribute("type", "Products");
		if (id != -1 && !action.equals("null")) {
			if (action.equals("edit")) {
				model.addAttribute("objectEdit", productsService.getProduct(id));
			} else if (action.equals("delete")) {
				model.addAttribute("objectEdit", productsService.getProduct(id));
			} else if (action.equals("detail")) {
				model.addAttribute("objectEdit", new ProductsDTO());
				model.addAttribute("objectDetail", productsService.getProductImages(id));
				if (actionDetail.equals("editDetail") && detailId != -1) {
					model.addAttribute("type", "ProductImage");
					model.addAttribute("objectEdit", productImagesService.getProductImages(detailId));
				}
			}
		} else {
			model.addAttribute("objectEdit", new ProductsDTO());
		}
		List<String> categories = new ArrayList<>();
		categoriesService.getAllCategories().forEach(c -> {
			categories.add(c.getName());
		});
		model.addAttribute("categories", categories);
		model.addAttribute("listObject", productsService.getAllProduct());
		return "adminTable";
	}

	@GetMapping(value = { "/customer" })
	public String customer(Model model, @RequestParam(required = false, defaultValue = "-1") Integer id,
			@RequestParam(required = false, defaultValue = "null") String action) {
		model.addAttribute("url", "customer");
		if (id != -1 && !action.equals("null")) {
			if (action.equals("edit")) {
				model.addAttribute("objectEdit", customerService.getCustomer(id));
			} else if (action.equals("delete")) {
				model.addAttribute("objectEdit", customerService.getCustomer(id));
			}
		} else {
			model.addAttribute("objectEdit", new CustomersDTO());
		}
		model.addAttribute("type", "Customers");
		model.addAttribute("listObject", customerService.getAllCustomer());
		return "adminTable";
	}

	@GetMapping(value = { "/staff" })
	public String staff(Model model, @RequestParam(required = false, defaultValue = "-1") Integer id,
			@RequestParam(required = false, defaultValue = "null") String action) {
		model.addAttribute("url", "staff");
		if (id != -1 && !action.equals("null")) {
			if (action.equals("edit")) {
				model.addAttribute("objectEdit", staffService.getStaff(id));
			} else if (action.equals("delete")) {
				model.addAttribute("objectEdit", staffService.getStaff(id));
			}
		} else {
			model.addAttribute("objectEdit", new StaffDTO());
		}
		model.addAttribute("type", "Staff");
		model.addAttribute("listObject", staffService.getAllStaff());
		return "adminTable";
	}

	@GetMapping(value = { "/user" })
	public String user(Model model, @RequestParam(required = false, defaultValue = "null") String id,
			@RequestParam(required = false, defaultValue = "null") String action) {
		model.addAttribute("url", "user");
		if (!id.equals("null") && !action.equals("null")) {
			if (action.equals("edit")) {
				model.addAttribute("objectEdit", userService.getUsers(id));
			} else if (action.equals("delete")) {
				model.addAttribute("objectEdit", new UsersDTO());
			}
		} else {
			model.addAttribute("objectEdit", new UsersDTO());
		}
		List<Boolean> active = new ArrayList<>();
		active.add(true);
		active.add(false);
		model.addAttribute("active", active);
		model.addAttribute("type", "User");
		model.addAttribute("listObject", userService.getAllUsers());
		return "adminTable";
	}

	@GetMapping(value = { "/categories" })
	public String categories(Model model, @RequestParam(required = false, defaultValue = "-1") Integer id,
			@RequestParam(required = false, defaultValue = "null") String action) {
		model.addAttribute("url", "categories");
		if (id != -1 && !action.equals("null")) {
			if (action.equals("edit")) {
				model.addAttribute("objectEdit", categoriesService.getCategories(id));
			} else if (action.equals("delete")) {
				model.addAttribute("objectEdit", new CategoriesDTO());
			}
		} else {
			model.addAttribute("objectEdit", new CategoriesDTO());
		}
		model.addAttribute("type", "Categories");
		model.addAttribute("listObject", categoriesService.getAllCategories());
		return "adminTable";
	}

}
