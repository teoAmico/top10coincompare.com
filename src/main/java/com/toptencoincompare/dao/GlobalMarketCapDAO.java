package com.toptencoincompare.dao;

import com.toptencoincompare.entities.GlobalMarketCap;

public interface GlobalMarketCapDAO {
	
	public GlobalMarketCap getGlobalMarketCap();
	public boolean updateGlobalMarketCap(Double marketCap);
}
