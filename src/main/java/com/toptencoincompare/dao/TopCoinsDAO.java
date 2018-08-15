package com.toptencoincompare.dao;

import java.util.List;

import com.toptencoincompare.entities.TopCoins;

public interface TopCoinsDAO {
	
	public List<TopCoins> getTopCoins();
}
