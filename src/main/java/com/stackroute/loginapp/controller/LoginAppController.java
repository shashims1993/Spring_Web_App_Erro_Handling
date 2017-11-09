package com.stackroute.loginapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.stackroute.loginapp.model.User;

@Controller
public class LoginAppController {

	List<User> list = new ArrayList<User>();

	@RequestMapping("/")
	public String login_App() {
		return "Login";
	}

	@RequestMapping(value = "/sendData")
	public String retriveData(@RequestParam("username") String username, @RequestParam("mobileno") long mobileno,
			ModelMap modal) {
		if(username.equals(null) || username.equals(""))
		{
			modal.addAttribute("errorMsg", "Name or Mobile number is not entered");
		}
		User user = new User();
		user.setUsername(username);
		user.setMobileno(mobileno);
		list.add(user);
		
		System.out.println("Name is " + username);
		System.out.println("Mobile No is" + mobileno);

		modal.addAttribute("list", list);

		return "Login";
	}
}
