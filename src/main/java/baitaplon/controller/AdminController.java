package baitaplon.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import baitaplon.DAO.CategoryDAO;
import baitaplon.DAO.ProductDAO;
import baitaplon.entities.Category;
import baitaplon.entities.CustomUserDetails;
import baitaplon.entities.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = "/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("mess", "Welcome to admin page");
		CustomUserDetails user = (CustomUserDetails)

		SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("user", user);
		model.addAttribute("title", "DashBoard");
		return "Admin/dashboard";
	}

	@RequestMapping(value = "/product")
	public String index(Model model) {
		List<Product> list = productDAO.getProducts();
		model.addAttribute("list", list);
		model.addAttribute("title", "List product");
		return "Admin/product/index";
	}

	@RequestMapping("/addProduct")
	public String add(Model model) {
		Product product = new Product();
		List<Category> listCategory = categoryDAO.getCate();
		model.addAttribute("product", product);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("title", "Add new product");
		return "Admin/product/add";
	}

	@RequestMapping("/insertProduct")
	public String save(@ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("test") MultipartFile fileImage, HttpServletRequest request) {

		String path = request.getServletContext().getRealPath("resources/images");
		File f = new File(path);
		String fileName = fileImage.getOriginalFilename();
		File distination = new File(f.getAbsolutePath() + "/" + fileName);
		if (!distination.exists()) {
			try {
				Files.write(distination.toPath(), fileImage.getBytes(), StandardOpenOption.CREATE);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		product.setImage(fileName);

		if (productDAO.insertProduct(product)) {
			return "Admin/product/index";
		} else {
			return "Admin/product/add";
		}

	}

	@RequestMapping("/detail")
	public String productDetail(@RequestParam("proId") Integer proId, Model model) {
		Product product = productDAO.getProductById(proId);
		model.addAttribute("product", product);
		model.addAttribute("title", "Product Detail");
		return "Admin/product/detail";
	}

	@RequestMapping("/editProduct")
	public String editProduct(@RequestParam("proId") Integer proId, Model model) {
		Product product = productDAO.getProductById(proId);
		List<Category> listCategory = categoryDAO.getCate();
		model.addAttribute("product", product);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("title", "Edit Product");
		return "Admin/product/edit";
	}
	
	@RequestMapping(value = "/updateProduct")
	public String update(@ModelAttribute("product")Product product,BindingResult result,@RequestParam("fileImage")MultipartFile fileImage,HttpServletRequest request) {
		// xu ly upload file 
				String fileName = fileImage.getOriginalFilename();
				boolean isEmpty = fileName == null || fileName.trim().length() == 0;
				if(!isEmpty) {
					String path = request.getServletContext().getRealPath("resources/images");
					File f = new File(path);
					
					File distination = new File(f.getAbsolutePath()+"/"+fileName);
					if(!distination.exists()) {
						try {
							Files.write(distination.toPath(), fileImage.getBytes(), StandardOpenOption.CREATE);
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					product.setImage(fileName);
				}
				
				if(productDAO.update(product)) {
					return "redirect:/product";
				} else {
					return "redirect:/updateProduct";
				}
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("proId")Integer proId, Model model) {
		boolean bl = productDAO.delete(proId);
		if(bl) {
			model.addAttribute("success", "Delete successfully!");
		}else {
			model.addAttribute("error", "Delete failed!");
		}
		List<Product> p = productDAO.getProducts();
		model.addAttribute("list", p);
		return "Admin/product/index";
	}
	
}
