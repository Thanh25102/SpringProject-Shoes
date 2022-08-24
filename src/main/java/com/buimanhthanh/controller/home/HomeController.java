package com.buimanhthanh.controller.home;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.buimanhthanh.dto.ProductsDTO;
import com.buimanhthanh.service.CategoriesService;
import com.buimanhthanh.service.ProductImagesService;
import com.buimanhthanh.service.ProductsService;

@Controller
public class HomeController {

	@Autowired
	private ProductImagesService productImagesService;
	@Autowired
	private ProductsService productsService;

	@Autowired
	private CategoriesService categoriesService;

	@GetMapping(value = { "/" })
	public ModelAndView index(Model model,HttpSession session) {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("slide",productImagesService.getAllProductImageTypeEqualSlide());
		mv.addObject("products",productsService.getTopProductLatest());
		mv.addObject("currentUser",session.getAttribute("currentUser"));
		return mv;
	}

	@GetMapping(value = { "/cart" })
	public String cart() {
		return "cart";
	}

	@GetMapping(value = { "/checkout" })
	public String checkOut() {
		return "checkOut";
	}

	@GetMapping(value = { "/shop" })
	public ModelAndView shop(@RequestParam(required = false,defaultValue = "0") Integer idCategory, @RequestParam(defaultValue = "0",required = false) Integer page) {
		ModelAndView mv = new ModelAndView("shop");
		mv.addObject("totalPage",productsService.countTotalPage(idCategory == 0 ? 1 : idCategory));
		if(idCategory != 0 && page!= 0){
			mv.addObject("productCategories",productsService.getProductFromCategory(idCategory,page));
		}else if(idCategory != 0){
			mv.addObject("productCategories",productsService.getProductFromCategory(idCategory,1));
		} else{
			mv.addObject("productCategories",productsService.getProductFromCategory(1,1));
		}
		mv.addObject("categories",categoriesService.getAllCategories());
		return mv;
	}

	@GetMapping(value = { "/product-detail" })
	public ModelAndView productDetail(@RequestParam Integer id) {
		ModelAndView mv = new ModelAndView("detailProduct");
		ProductsDTO productsDTO = productsService.getProduct(id);
		mv.addObject("product",productsDTO);
		mv.addObject("productLimit10",productsService.getProductFromCategoryLimit(productsDTO.getCategoryId(),10));
		return mv;
	}
}
