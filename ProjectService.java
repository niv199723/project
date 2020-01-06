package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.DemoDAO;
import com.example.demo.dao.ProjectDAO;
import com.example.demo.model.ProjectDetails;
import com.example.demo.model.User;
@Service
public class ProjectService {
	@Autowired
	ProjectDAO dao;
	public void addUser(ProjectDetails pd) {
		// TODO Auto-generated method stub
		dao.addUser(pd);
	}
}
