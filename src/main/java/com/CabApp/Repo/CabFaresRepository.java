package com.CabApp.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.CabApp.model.CabFares;

public interface CabFaresRepository extends JpaRepository<CabFares, Integer> {

    // Add custom query methods if needed
	 List<CabFares> findByFromLocation(String fromLocation);
	 CabFares findByFromLocationAndToLocation(String fromLocation, String toLocation);
}