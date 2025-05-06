package com.codingdojo.MyProject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.MyProject.models.Marine;
import com.codingdojo.MyProject.repositories.MarineRepository;

@Service
public class MarineService {
	
	private MarineRepository marineRepo;
	
	public MarineService(MarineRepository marineRepo) {
		this.marineRepo = marineRepo;
	}
	
	public List<Marine> allMarines(){
		return marineRepo.findAll();
	}
	
	//create
	public Marine createMarine(Marine marine) {
		return marineRepo.save(marine);
	}
	
	//show
	public Marine singleMarine(Long id) {
		Optional<Marine> optMarine = marineRepo.findById(id);
		if(optMarine.isPresent()) {
			return optMarine.get();
		}
		else {
			return null;
		}
	}
	
	//Update
	public void updateMarine(Marine marine) {
		marineRepo.save(marine);
	}
	
	//delete
	public void deleteMarine(Long id) {
		marineRepo.deleteById(id);
		 
	}


}
