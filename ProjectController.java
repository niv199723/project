package com.example.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.ProjectDetails;
import com.example.demo.model.User;
import com.example.demo.services.DemoDervice;
import com.example.demo.services.ProjectService;
@Controller
@ResponseBody
public class ProjectController {
    @Autowired
    ProjectService service;
//	@GetMapping("/nivi")
//	public ArrayList<User> getUserid(@RequestParam("userId") String userId) {
//		return service.getUserid(userId);
//	}

	@PostMapping("/def")
	public void addUser(@RequestBody ProjectDetails pd) {
         System.out.println(pd);
		service.addUser(pd);
}
}