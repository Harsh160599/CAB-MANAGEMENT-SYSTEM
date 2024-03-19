package com.CabApp;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.CabApp.Repo.BookCabRepository;
import com.CabApp.model.BookCab;


@SpringBootTest
@TestMethodOrder(OrderAnnotation.class)
public class TestBookCab {
@Autowired
	BookCabRepository bcr;
@Test
@Order(1)
public void testaddBooking()
{
	BookCab bookCab=new BookCab();
	bookCab.setDate(null);
	bookCab.setBookId(666);
	bookCab.setFromLocation("Bangalore");
	bookCab.setToLocation("Punjab");
	bookCab.setCustomerName("Farhan");
	bookCab.setVechNo(" P12547");
	bookCab.setFare(17500);
	bookCab.setPhone("8574856541");
	BookCab temp=bcr.save(bookCab);
    assertNotNull(temp);
}

@Test
@Order(2)
public void testallBookCab()
{
	 List list=bcr.findAll();
	 assertThat(list).size().isGreaterThan(0);	 
}

@Test
@Order(3)
public void testDeleteBookCab()
{
	 bcr.deleteById(222);
	 assertThat(bcr.existsById(222)).isFalse();
}
@Test
@Order(4)
public void testUpdateBookCab() {
	BookCab bookCab= bcr.findById(444).get();
	bookCab.setCustomerName("Rohan");
	bcr.save(bookCab);
	assertNotEquals("Gaura",bcr.findById(444).get().getCustomerName());
	
}
} 
