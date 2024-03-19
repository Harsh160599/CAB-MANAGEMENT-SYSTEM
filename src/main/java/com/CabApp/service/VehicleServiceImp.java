package com.CabApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.CabApp.Repo.VehiclesRepository;
import com.CabApp.model.Vehicles;
@Service
public class VehicleServiceImp implements VehiclesService {

	@Autowired
	VehiclesRepository vs;
	@Override
	public String addVehicle(Vehicles vehicle) {
		// TODO Auto-generated method stub
		Vehicles vehicles=vs.save(vehicle);
		if(vehicles!=null)
			return "Success";
		return "Err";
	}

	@Override
	public List<Vehicles> getAllVehicles() {
		// TODO Auto-generated method stub
		List<Vehicles> veh=vs.findAll();
		return veh;
	}

	@Override
	public void deleteVehicleById(int id) {
		// TODO Auto-generated method stub
		vs.deleteById(id);
	}

	@Override
	public String updateVehicle(Vehicles vehicle) {
		// TODO Auto-generated method stub
		Vehicles vehicles=vs.save(vehicle);
		if(vehicles!=null)
			return "Success";
		return "Err";
	}
	@Override
    public Vehicles getVehicleById(int id) {
        return vs.findById(id).orElse(null);
    }
}
