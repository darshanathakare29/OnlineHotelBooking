package com.example.demo.Controllers;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.demo.Model.Users;
import com.example.demo.Services.UserService;

@Controller
public class UserController {

	@Autowired
	UserService us;
	
	@RequestMapping("/")
	public String one() {
		return "index";
	}
	@RequestMapping("/BookingNow")
	public String booking() {
		return "Booking";
	}
	@RequestMapping("/BookHotel")
	public String BookHotel() {
		return "BookHotel";
	}
	
	
	@RequestMapping("/SaveUserData")
	public String two(@ModelAttribute Users u1) {
		u1.setId(UUID.randomUUID().toString());
		us.saveUser(u1);
		return "redirect:/";
	}
}
