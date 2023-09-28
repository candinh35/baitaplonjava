package baitaplon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import baitaplon.DAO.CategoryDAO;
import baitaplon.entities.Category;

@Controller
public class HomeController {
	@Autowired
	private CategoryDAO categoryDao;
	
	@RequestMapping(value= {"/", "/index"})
	public String index(Model model) {
		model.addAttribute("title", "Trang chủ");
		return "index";
	}
	@RequestMapping(value= {"/product"})
	public String product(Model model) {
		List<Category> cate = categoryDao.getCate();
		model.addAttribute("list", cate);
		model.addAttribute("title", "Sản phẩm");
		return "product";
	}
	@RequestMapping(value= {"/contact"})
	public String contact(Model model) {
		model.addAttribute("title", "Liên hệ");
		return "contact";
	}
	@RequestMapping(value= {"/about"})
	public String about(Model model) {
		model.addAttribute("title", "Giới thiệu");
		return "about";
	}
	@RequestMapping(value= {"/collection"})
	public String collection(Model model) {
		model.addAttribute("title", "Bộ sưu tập");
		return "collection";
	}
	@RequestMapping(value="/product-detail")
	public String productDetail() {
		return "productDetail";
	}
}
