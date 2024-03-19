package com.CabApp.service;

import java.util.List;

import com.CabApp.model.Vehicles;

public interface VehiclesService {
	public String addVehicle(Vehicles vehicle);
    public List<Vehicles> getAllVehicles();
    public void deleteVehicleById(int id);
    public  String updateVehicle(Vehicles vehicle);
	public Vehicles getVehicleById(int id);;
}
