package com.CabApp;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.CabApp.Repo.VehiclesRepository;
import com.CabApp.model.CabFares;
import com.CabApp.model.Vehicles;

@SpringBootTest
@TestMethodOrder(OrderAnnotation.class)
public class VehiclesTest {
 @Autowired
	VehiclesRepository vs;
	
	 @Test
	 @Order(1)
	 public void testaddVehicle()
	 {
		 Vehicles vehicles = new Vehicles();
		 vehicles.setVid(1269);
		 vehicles.setVechName("BUV");
		 vehicles.setVechNo("W14223");
		 vehicles.setOwnerName("Dilip");
		 vehicles.setPhone("2547869874");
		 vehicles.setSeats(10);
		 Vehicles temp=vs.save(vehicles);
		 assertNotNull(temp);
	 }
	 @Test
	 @Order(2)
	 public void testallVehicle()
	 {
		 List list=vs.findAll();
		 assertThat(list).size().isGreaterThan(0);	 
	 }
	 
	 @Test
	 @Order(3)
	 public void testDeleteVehicle()
	 {
		 vs.deleteById(1266);
		 assertThat(vs.existsById(1266)).isFalse();
	 }
	 @Test
	 @Order(4)
	 public void testUpdateVehicle() {
		 Vehicles vehicles=vs.findById(1265).get();
		vehicles.setOwnerName("Pankaj");
		vs.save(vehicles);
		assertNotEquals("Saaa",vs.findById(1265).get().getOwnerName());
		
	 }
}
