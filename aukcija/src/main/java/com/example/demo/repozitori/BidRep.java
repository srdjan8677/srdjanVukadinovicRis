package com.example.demo.repozitori;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Bid;

public interface BidRep extends JpaRepository<Bid, Integer>{
	
	@Query("select b from Bid b where b.item.category.idCategory =:x")
	public List<Bid> findBidByCategory(@Param("x")int boxC);

}
