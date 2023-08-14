package com.codingdojo.bookclub.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.bookclub.models.LoginUser;
import com.codingdojo.bookclub.models.User;
import com.codingdojo.bookclub.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class BookClubControllers {

    @Autowired
    private UserService userServ;

    //Login and Registration
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser,
                           BindingResult result, Model model, HttpSession session) {

        User registeredUser = userServ.register(newUser, result);

        if (registeredUser == null) {
            // Registration failed due to errors
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }

        // Registration successful, continue with login or other logic
        session.setAttribute("userId", registeredUser.getId());
        return "redirect:/home";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin,
                        BindingResult result, Model model, HttpSession session) {

        User loggedInUser = userServ.login(newLogin, result);

        if (loggedInUser == null) {
            // Login failed due to errors
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }

        // Login successful, continue with other logic
        session.setAttribute("userId", loggedInUser.getId());
        return "redirect:/home";
    }

    //=======================================================================================================


    //Home
    @GetMapping("/home")
    public String home(HttpSession session, Model model) {

        Long userId = (Long) session.getAttribute("userId");

        if (userId == null) {
            // If the user is not logged in, redirect to login page
            return "redirect:/";
        }

        // If the user is logged in, continue
        User loggedInUser = userServ.findById(userId);
        model.addAttribute("userName", loggedInUser.getUserName()); // Add userName attribute to the model
        return "home.jsp";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        // invalidate session
        // redirect to login page
        session.invalidate();
        return "redirect:/";
    }
}
