package com.toptencoincompare.dao;

import java.util.List;

import com.toptencoincompare.entities.CoinsListing;

public interface CoinsListingDAO {

	public List<CoinsListing> getListings();

	public CoinsListing getCoin(Integer id);
	
	public boolean updateCoin(Integer id, String name, Integer circulatingSupply, 
			Integer totalSupply, Double usdPrice, Double marketCap, 
			String lastUpdated, String symbol, Double usdVolume24h);
}
