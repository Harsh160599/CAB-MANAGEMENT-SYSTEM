package com.CabApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.CabApp.Repo.BookCabRepository;
import com.CabApp.Repo.CabFaresRepository;
import com.CabApp.Repo.VehiclesRepository;
import com.CabApp.model.BookCab;
import com.CabApp.model.CabFares;
import com.CabApp.model.Vehicles;
@Service
public class BookCabServiceImpl implements BookCabService{
	@Autowired
    private CabFaresRepository cabFaresRepository;

    @Autowired
    private VehiclesRepository vehiclesRepository;

    
    public List<CabFares> getAllCabFares() {
        return cabFaresRepository.findAll();
    }

   
    public List<Vehicles> getAllVehicles() {
        return vehiclesRepository.findAll();
    }
    
@Autowired
	BookCabRepository bcr;
@Autowired
    CabFaresRepository  cs;
	@Override
	public String bookCab(BookCab booking) {
		// TODO Auto-generated method stub
		BookCab bokBookCab=bcr.save(booking);
		if(bokBookCab!=null)
			return "Success";
		return "Err";
	}

	@Override
	public List<BookCab> getAllBookings() {
		// TODO Auto-generated method stub
		List<BookCab> bok=bcr.findAll();
		return bok;
	}

	@Override
	public void cancelBooking(int bookingId) {
		// TODO Auto-generated method stub
		bcr.deleteById(bookingId);
	}

	 public int calculateFare(String fromLocation, String toLocation) {
	        CabFares cabFare = cs.findByFromLocationAndToLocation(fromLocation, toLocation);
	        int fare = cabFare != null ? cabFare.getFare() : -1; 
	        return fare;
	    }

}
