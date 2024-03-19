package com.CabApp;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;


import java.util.List;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.CabApp.Repo.CabFaresRepository;
import com.CabApp.model.CabFares;

@SpringBootTest
@TestMethodOrder(OrderAnnotation.class)
public class CabFaresTest {
	@Autowired
	CabFaresRepository cr;
	 @Test
	 @Order(1)
	    public void testAddCabFare() {
	        CabFares cabFare = new CabFares(); 
	       cabFare.setId(109);
	       cabFare.setFromLocation("Sonipat");
	       cabFare.setToLocation("Punjab");
	       cabFare.setFare(10000);      
	      CabFares temp=cr.save(cabFare);
	      assertNotNull(temp);
	 }
	 @Test
	 @Order(2)
	 public void testallCabFare()
	 {
		 List list= cr.findAll();
	     assertThat(list).size().isGreaterThan(0);	 
	 }
	 @Test
	 @Order(3)
	 public void testDeleteCabFare()
	 {
		 cr.deleteById(106);
		 assertThat(cr.existsById(106)).isFalse();
	 }
	 @Test
	 @Order(4)
	 public void testUpdateCabFare() {
		CabFares cabFares=cr.findById(103).get();
		cabFares.setFare(125055);
		cr.save(cabFares);
		assertNotEquals(17000,cr.findById(103).get().getFare());
		
	 }
}
