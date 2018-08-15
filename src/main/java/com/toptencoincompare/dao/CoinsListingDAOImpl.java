package com.toptencoincompare.dao;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.toptencoincompare.entities.CoinsListing;


@Repository
public class CoinsListingDAOImpl implements CoinsListingDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<CoinsListing> getListings() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public CoinsListing getCoin(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		
		Query<CoinsListing> coinQuery = session.createQuery("from CoinsListing WHERE id=:id", CoinsListing.class);
		coinQuery.setParameter( "id", Integer.valueOf(id));
		CoinsListing coin = coinQuery.getSingleResult();
		
		return coin;

	}

	@Override
	@Transactional
	public boolean updateCoin(Integer id,String name, Integer circulatingSupply, Integer totalSupply, Double usdPrice,
			Double marketCap, String lastUpdated, String symbol, Double usdVolume24h) {
		
		Session session = sessionFactory.getCurrentSession();
		CoinsListing coin = getCoin(id);
		coin.setIsActive(true);
		coin.setName(name);
		coin.setSymbol(symbol);
		coin.setCirculatingSupply(circulatingSupply);
		coin.setTotalSupply(totalSupply);
		coin.setUsdPrice(usdPrice);
		coin.setMarketCap(marketCap);
		LocalDateTime localDateTime = LocalDateTime.now();
		Timestamp today = Timestamp.valueOf(localDateTime);
		coin.setLastUpdated(today);
		coin.setSymbol(symbol);
		coin.setUsdVolume24h(usdVolume24h);
		session.update(coin);
		
		return true;
	}

}
