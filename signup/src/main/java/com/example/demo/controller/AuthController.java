package com.example.demo.controller;

import com.example.demo.model.UserSignup;
import com.example.demo.repository.UserSignupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AuthController {

    @Autowired
    private UserSignupRepository repository;

    @GetMapping("/")
    public String home() {
        return "welcome";
    }

    @GetMapping("/signup")
    public String signupForm() {
        return "signup";
    }

    @PostMapping("/signup")
    public String processSignup(@ModelAttribute UserSignup userSignup) {
        repository.save(userSignup);
        return "redirect:/success";
    }

    @GetMapping("/success")
    public String successPage() {
        return "success";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String processLogin(@RequestParam String email,
                               @RequestParam String password,
                               Model model) {
        List<UserSignup> users = repository.findByEmailAndPassword(email, password);

        if (!users.isEmpty()) {
            UserSignup user = users.get(0); // pick the first match
            model.addAttribute("user", user);
            return "welcome"; // or dashboard
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }
}
