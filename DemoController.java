package com.example.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.User;
import com.example.demo.services.DemoDervice;

@Controller
@ResponseBody
public class DemoController {
	
	    @Autowired
	    DemoDervice service;
		@GetMapping("/nivi")
		public ArrayList<User> getUserid(@RequestParam("userId") String userId) {
			return service.getUserid(userId);
		}
		@PostMapping("/abc")
		public void addUser(@RequestBody User pd) {
		
             System.out.println();
			service.addUser(pd);
			
		}
		
	
//		@RequestMapping("/user")
//		public String getUser() {
//			return "user details will be displayed after implementation";
//		}
}

