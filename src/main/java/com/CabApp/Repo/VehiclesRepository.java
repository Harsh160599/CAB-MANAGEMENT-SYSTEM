package com.CabApp.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.CabApp.model.Vehicles;

public interface VehiclesRepository extends JpaRepository<Vehicles, Integer> {
    // Add custom query methods if needed
}