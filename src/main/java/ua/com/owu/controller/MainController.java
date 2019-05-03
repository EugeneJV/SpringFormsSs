package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import ua.com.owu.entity.Car;
import ua.com.owu.entity.User;
import ua.com.owu.service.user.UserService;

@Controller
public class MainController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String home(Model model){
        return "index";
    }

    @GetMapping("/join")
    public String join(Model model){
        model.addAttribute("users",userService.findAll());
        return "join";
    }

    @ModelAttribute("userModel")
    public User user(){
        return new User();
    }

    @ModelAttribute("carModel")
    public Car car(){
        return new Car();
    }

    @GetMapping("/rest")
    public String rest(){
        return "rest";
    }

}
