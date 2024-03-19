package com.CabApp.service;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.CabApp.Repo.CabFaresRepository;
import com.CabApp.model.CabFares;
@Service
public class CabFaresServiceImpl implements CabFaresService {
@Autowired
	CabFaresRepository cr;
	
	@Override
	public String addCabFare(CabFares cabFare) {
		// TODO Auto-generated method stub
		CabFares   cabFares= cr.save(cabFare);
		if(cabFares!=null)
			return "Success";
		return "Err";
	}

	@Override
	public List<CabFares> getAllCabFares() {
		// TODO Auto-generated method stub
		List<CabFares> cabFares= cr.findAll();
		return cabFares;
	}

	@Override
	public void deleteCabFareById(int id) {
		// TODO Auto-generated method stub
		cr.deleteById(id);
	}

	@Override
    public List<String> getUniqueFromLocations() {
        // Fetch all cab fares
        List<CabFares> cabFares = cr.findAll();
        
        // Extract unique FromLocations using Java streams and collect to a list
        List<String> uniqueFromLocations = cabFares.stream()
                                                    .map(CabFares::getFromLocation)
                                                    .distinct()
                                                    .collect(Collectors.toList());
        return uniqueFromLocations;
    }

	 @Override
	    public List<String> getUniqueToLocations() {
	        // Fetch all cab fares
	        List<CabFares> cabFares = cr.findAll();
	        
	        // Extract unique ToLocations using Java streams and collect to a list
	        List<String> uniqueToLocations = cabFares.stream().map(CabFares::getToLocation).distinct().collect(Collectors.toList());
	                                                                             
	        return uniqueToLocations;
	    }
	 @Override
	    public List<String> getToLocationsForFromLocation(String fromLocation) {
	        // Fetch possible ToLocations based on the selected FromLocation
	        List<CabFares> cabFares = cr.findByFromLocation(fromLocation);
	        
	        // Extract ToLocations and collect to a list
	        List<String> toLocations = cabFares.stream().map(CabFares::getToLocation).distinct() .collect(Collectors.toList());
	                                           
	                                          
	        return toLocations;
	    }
	 @Override
	 public Optional<CabFares> viewCabFareById(int id) {
	        return cr.findById(id);
	    }
	 @Override
	    public Optional<CabFares> getCabFareById(int id) {
	        return cr.findById(id);
	    }
	 @Override
	 public CabFares updateCabFare(int id, CabFares updatedCabFare) {
	        Optional<CabFares> existingCabFareOptional = cr.findById(id);
	        if (existingCabFareOptional.isPresent()) {
	            CabFares existingCabFare = existingCabFareOptional.get();
	            existingCabFare.setFromLocation(updatedCabFare.getFromLocation());
	            existingCabFare.setToLocation(updatedCabFare.getToLocation());
	            existingCabFare.setFare(updatedCabFare.getFare());
	            return cr.save(existingCabFare);
	        } else {
	            return null; // Or throw an exception indicating cab fare not found
	        }
	    }
	}