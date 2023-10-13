package baitaplon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import baitaplon.DAO.CategoryDAO;
import baitaplon.entities.Category;

@Controller

@RequestMapping("/admin")
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping("/listCategory")
	public String index(Model model) {
		List<Category> categories = categoryDAO.getCate();
		model.addAttribute("list", categories);
		model.addAttribute("title", "List Category");
		return "Admin/category/index";
	}

	@RequestMapping("/addCategory")
	public String addCate(Model model) {
		Category category = new Category();
		model.addAttribute("category", category);
		model.addAttribute("title", "Add Category");
		return "Admin/category/add";
	}

	@RequestMapping("/insertCategory")
	public String save(@ModelAttribute("category") Category category, Model model) {

		boolean bl = categoryDAO.create(category);
		if(bl) {
			model.addAttribute("success", "Insert successfully!");
			List<Category> categories = categoryDAO.getCate();
			model.addAttribute("list", categories);
			model.addAttribute("title", "List Category");
			return "Admin/category/index";
		}else {
			model.addAttribute("error", "Insert failed!");
			model.addAttribute("category", category);
			model.addAttribute("title", "Add category");
			return "Admin/category/add";
		}
	}

	@RequestMapping("/deleteCategory")
	public String deleteStudent(@RequestParam("cateId") Integer cateId, Model model) {
		boolean bl = categoryDAO.delete(cateId);
		if (bl) {
			model.addAttribute("success", "Delete successfully!");
		} else {
			model.addAttribute("error", "Delete failed!");
		}
		List<Category> categories = categoryDAO.getCate();
		model.addAttribute("list", categories);
		return "Admin/category/index";
	}

	@RequestMapping("/editCategory")
	public String edit(@RequestParam("cateId") Integer cateId, Model model) {
		Category category = categoryDAO.getCategoryById(cateId);
		model.addAttribute("category", category);
		model.addAttribute("title", "Edit Category");
		return "Admin/category/edit";
	}

	@RequestMapping(value = "/updateCategory")
	public String update(@ModelAttribute("category") Category category, Model model) {

		boolean bl = categoryDAO.update(category);
		if (bl) {
			model.addAttribute("success", "Update successfully!");
			List<Category> categories = categoryDAO.getCate();
			model.addAttribute("list", categories);
			return "Admin/category/index";
		} else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("category", category);
			return "Admin/category/edit";
		}
	}

	@RequestMapping("/searchCategoryByName")
	public String search(@RequestParam("cateName") String cateName, Model model) {
		if (cateName == null || cateName.length() == 0) {
			cateName = "%";
		} else {
			cateName = "%" + cateName + "%";
		}
		List<Category> categories = categoryDAO.getCategoryByName(cateName);
		model.addAttribute("list", categories);

		return "Admin/category/index";
	}
}
