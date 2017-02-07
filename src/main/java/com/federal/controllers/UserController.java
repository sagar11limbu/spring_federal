package com.federal.controllers;


import javax.ws.rs.GET;
import javax.ws.rs.core.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.configurers.userdetails.UserDetailsServiceConfigurer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.federal.model.ChangePasswordForm;
import com.federal.model.User;
import com.federal.services.SecurityService;
import com.federal.services.UserService;
import com.federal.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(Model model){
    	return "index";
    }
    
    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "index";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String login(Model model) {
        
        return "index";
    }
    
    
    @RequestMapping(value = "/changepassword", method = RequestMethod.GET)
    public String changePassword(Model model){

    	model.addAttribute("changePassword", new ChangePasswordForm());
    	return "changepassword";
    }
    
    @RequestMapping(value = "/changepassword", method = RequestMethod.POST)
    public String changePassword(@ModelAttribute("changePassword") ChangePasswordForm changePassword,  Model model, @RequestParam String oldPassword, @RequestParam String newPassword) {    	
    	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
         String username = auth.getName(); //get logged in username
         User u =userService.findByUsername(username);
         BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();  
         if(username.equals(u.getUsername()) && encoder.matches(oldPassword, u.getPassword())){
         }
         else
         {
        	 model.addAttribute("message","failed");
         }
         return "changepassword";
    }
    
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }

    
    @RequestMapping(value = "/articles", method = RequestMethod.GET)
    public String articles(Model model) {
        
        return "articles";
    }

}
