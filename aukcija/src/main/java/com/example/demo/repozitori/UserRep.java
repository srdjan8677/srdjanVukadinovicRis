package com.example.demo.repozitori;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Serviceuser;

public interface UserRep extends JpaRepository<Serviceuser, Integer>{

	public Serviceuser findByUsernameAndPassword(String username, String password);
	
}
