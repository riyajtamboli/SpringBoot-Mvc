package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.entity.Cricketer;
import com.rt.repository.CricketerRepository;
@Service
public class CricketServiceImple implements CricketerService {
	
	@Autowired
	private CricketerRepository repository;
	@Override
	public String addCricketer(Cricketer cricketer) {
		Cricketer cric = repository.save(cricketer);
		return "Cricketer Saved with Id : "+cric.getPlayerId();
	}
	@Override
	public List<Cricketer> getAllPlayer() {
		List<Cricketer> list = repository.findAll();
		return list;
	}
	@Override
	public Cricketer getCricketerById(Integer playerId) {
		Cricketer crickter = repository.findById(playerId).orElseThrow(() -> new IllegalArgumentException());
		return crickter;
	}
	@Override
	public String updateCricketer(Cricketer cricketer) {
		
		return "Cricketer updat having id : "+ repository.save(cricketer).getPlayerId();
	}
	@Override
	public String deleteById(Integer playerId) {
		repository.deleteById(playerId);
		return "Cricketer Delete Whose id : "+playerId;
	}
	
	

}
