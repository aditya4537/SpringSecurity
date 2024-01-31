package com.example.springsecuritytask.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.springsecuritytask.model.UserData;
import com.example.springsecuritytask.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;

	public String getAuthName(Authentication authentication) {
		Authentication name = SecurityContextHolder.getContext().getAuthentication();
		return name.getName();
	}
	
	@GetMapping("/")
	public ModelAndView indexPage() {
		return new ModelAndView("index");
	}

	@GetMapping("/home")
	public ModelAndView homePage(Authentication authentication) {
		String username = getAuthName(authentication);
		ModelAndView m1 = new ModelAndView("home");
		m1.addObject("user", username);
		return m1;
	}

	@GetMapping("/register")
	public ModelAndView registerPage() {
		return new ModelAndView("register");
	}

	@GetMapping("/login")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}

	@GetMapping("/logout")
	public ModelAndView logoutPage() {
		return new ModelAndView("redirect:/");
	}

	@PostMapping("/addUser")
	public ModelAndView addUser(@ModelAttribute UserData user) {
		String userVal = userService.addUser(user);
		if(userVal == "success") {			
			return new ModelAndView("redirect:/login");
		}
		else {
			return new ModelAndView("redirect:/register");
		}
	}

	@GetMapping("/admin")
	public ModelAndView adminPage(Authentication authentication) {
		String username = getAuthName(authentication);
		ModelAndView m1 = new ModelAndView("admin");
		m1.addObject("user", username);
		return m1;
	}

	@GetMapping("/user")
	public ModelAndView userPage(Authentication authentication) {
		String username = getAuthName(authentication);
		ModelAndView m1 = new ModelAndView("user");
		m1.addObject("user", username);
		return m1;
	}
	
	@GetMapping("/profile/{username}")
	public ModelAndView profilePage(@PathVariable String username) {
		ModelAndView mv = new ModelAndView("profile");
		mv.addObject("userdata", userService.getUser(username));
		return mv;
	}

	@GetMapping("/admin/users")
	public ModelAndView adminUsersPage() {
		ModelAndView mv = new ModelAndView("adminUsers");
		mv.addObject("users", userService.getAllUsers());
		return mv;
	}
}
