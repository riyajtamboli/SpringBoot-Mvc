package com.rt.service;

import java.util.List;

import com.rt.entity.Cricketer;

public interface CricketerService{
	public String addCricketer(Cricketer cricketer);
	public List<Cricketer> getAllPlayer();
	public Cricketer getCricketerById(Integer playerId);
	public String updateCricketer(Cricketer cricketer);
	
	public String deleteById(Integer playerId);
}

