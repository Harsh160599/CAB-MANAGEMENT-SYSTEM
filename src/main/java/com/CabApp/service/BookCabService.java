package com.CabApp.service;

import java.util.List;

import com.CabApp.model.BookCab;

public interface BookCabService {
	public String bookCab(BookCab booking);
    public List<BookCab> getAllBookings();
    public void cancelBooking(int bookingId);
    int calculateFare(String fromLocation, String toLocation);
}
