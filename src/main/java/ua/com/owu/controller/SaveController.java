package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.com.owu.service.user.UserService;
import ua.com.owu.service.user.validator.UserValidator;
import ua.com.owu.entity.Car;
import ua.com.owu.entity.User;
import ua.com.owu.service.car.CarService;

@Controller
@RequestMapping("/save")
public class SaveController {

    @Autowired
    private UserService userService;

    @Autowired
    private CarService carService;

    @Autowired
    private UserValidator userValidator;

    @InitBinder("userModel")
    public void binder (WebDataBinder dataBinder){
        dataBinder.addValidators(userValidator);
    }

    @PostMapping("/user")
    public String saveUser(@ModelAttribute ("userModel") @Validated User user, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "index";
        } else {
            userService.save(user);
            return "index";
        }
    }

    @PostMapping("/car")
    public String saveCar(@ModelAttribute("carModel") Car car){
        carService.save(car);
        return "index";
    }

    @PostMapping("/car/user")
    public String mergeSaveCarUser(@ModelAttribute Car carModel) {
        carService.save(carModel);
        return "index";
    }

    @ModelAttribute("userModel")
    public User user(){
        return new User();
    }

    @ModelAttribute("carModel")
    public Car car(){
        return new Car();
    }


}
