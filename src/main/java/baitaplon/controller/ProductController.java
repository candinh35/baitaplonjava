package baitaplon.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import baitaplon.DAO.CategoryDAO;
import baitaplon.DAO.ProductDAO;
import baitaplon.entities.Category;
import baitaplon.entities.Product;

@Controller
public class ProductController {
	
	@Autowired
    private CategoryDAO categoryDao;
    
    @Autowired
    private ProductDAO productDao;
    
	@RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public String getProductByCategory(@PathVariable(value = "cateId", required = false) Integer cateId, Model model) {
        List<Category> categories = categoryDao.getCate();
        model.addAttribute("categoryList", categories);

        List<Product> products;

        if (cateId != null) {
            products = productDao.getProductByCategory(cateId);
        } else {
            products = productDao.getProducts();
        }

        model.addAttribute("productList", products);
        model.addAttribute("title", "Product");

        return "product";
    }
	  @RequestMapping(value="/product-detail")
	    public String productDetail(@RequestParam("proId") Integer proId, Model model) {
	    	Product product = productDao.getProductById(proId);
	    	model.addAttribute("product", product);
	    	model.addAttribute("title", "Chi tiết sản phẩm");
	        return "productDetail";
	    }
}
