package com.CabApp.service;

import java.util.List;
import java.util.Optional;

import com.CabApp.model.CabFares;

public interface CabFaresService {
	public String addCabFare(CabFares cabFare);
    public List<CabFares> getAllCabFares();
    public void deleteCabFareById(int id);
    List<String> getUniqueFromLocations();
    List<String> getUniqueToLocations();
    List<String> getToLocationsForFromLocation(String fromLocation);
	Optional<CabFares> viewCabFareById(int id);
	CabFares updateCabFare(int id, CabFares updatedCabFare);
	Optional<CabFares> getCabFareById(int id);
	
    }

