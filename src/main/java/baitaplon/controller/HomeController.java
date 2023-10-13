package baitaplon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import baitaplon.DAO.CategoryDAO;
import baitaplon.DAO.ProductDAO;
import baitaplon.entities.Category;
import baitaplon.entities.Product;

@Controller
public class HomeController {
    @Autowired
    private CategoryDAO categoryDao;
    
    @Autowired
    private ProductDAO productDao;

    @RequestMapping(value= {"/", "/index"})
    public String index(Model model) {
        model.addAttribute("title", "Home");
        return "index";
    }

    

    @RequestMapping(value= {"/contact"})
    public String contact(Model model) {
        model.addAttribute("title", "Contact");
        return "contact";
    }

    @RequestMapping(value= {"/about"})
    public String about(Model model) {
        model.addAttribute("title", "About Us");
        return "about";
    }

    @RequestMapping(value= {"/collection"})
    public String collection(Model model) {
        model.addAttribute("title", "Collections");
        return "collection";
    }
    @RequestMapping(value={"/blog"})
    public String blog( Model model){
    	model.addAttribute("title", "Blog");
    	List<Category> category = categoryDao.getCate();
    	model.addAttribute("category", category);
    	return "blog";
    }

  
}
