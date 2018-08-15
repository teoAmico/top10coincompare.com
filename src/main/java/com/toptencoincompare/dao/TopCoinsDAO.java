package com.toptencoincompare.dao;

import java.util.Date;
import java.util.List;

import com.toptencoincompare.entities.TopCoins;

public interface TopCoinsDAO {
	
	public List<TopCoins> getTopCoins();
	
	public TopCoins getTopCoinByPosition(Integer position);
	
	public boolean updateTopCoin(Integer cmcId, Integer position, String name, String symbol,
			Double marketCap, Double usdPrice, Double usdVolume24h);
}
