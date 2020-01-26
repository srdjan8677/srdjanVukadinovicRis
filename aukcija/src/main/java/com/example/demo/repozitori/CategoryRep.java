package com.example.demo.repozitori;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Category;

public interface CategoryRep extends JpaRepository<Category, Integer>{

}
