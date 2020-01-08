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
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping("/un")
	public ModelAndView myMethod1() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("personal");
		//modelAndView.addObject("NewFile", service.getMessage());
		return modelAndView;
	}
    
    @GetMapping
    public ArrayList<ProjectDetails> getMessage(){
    	return service.getMessage();
    }
	@PostMapping("/submit")
	public ModelAndView myMethod2(ProjectDetails pd) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("qualification");
		//modelAndView.addObject("NewFile", service.getMessage());
		return modelAndView.addObject("test",service.addFresher(pd));
		
}
	@GetMapping("/hey")
	public ModelAndView myMethod3() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("personalDisplay");
		//modelAndView.addObject("NewFile", service.getMessage());
		return modelAndView.addObject("display",service.display1());
	}
	
	
	
}