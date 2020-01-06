package com.example.demo.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.DemoDAO;
import com.example.demo.model.User;

@Service
public class DemoDervice {
	
	@Autowired
	DemoDAO dao;
	public ArrayList<User> getMessage() {
		return dao.displayPerDet() ;
	}
	public ArrayList<User> getUserid(String userId) {
		return dao.displayUser(userId);
	}
	public ArrayList<User> display(String userId) {
		return dao.displayPerDet() ;
	}
//	public void addUser(User pd) {
//		// TODO Auto-generated method stub
//		dao.addUser(pd);
//	}
//	
}
