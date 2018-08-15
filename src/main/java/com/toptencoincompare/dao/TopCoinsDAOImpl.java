package com.toptencoincompare.dao;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.toptencoincompare.entities.GlobalMarketCap;
import com.toptencoincompare.entities.TopCoins;

@Repository
public class TopCoinsDAOImpl implements TopCoinsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<TopCoins> getTopCoins() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<TopCoins> tcQuery = session.createQuery("from TopCoins ORDER BY position ASC", TopCoins.class);
		
		List<TopCoins> topCoinsList = tcQuery.getResultList();
		
		return topCoinsList;
	}
	
	@Override
	@Transactional
	public TopCoins getTopCoinByPosition(Integer position) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<TopCoins> tcQuery = session.createQuery("from TopCoins WHERE position =:position", TopCoins.class);
		tcQuery.setParameter("position", position);
		
		TopCoins topCoin = tcQuery.getSingleResult();
		
		return topCoin;
	}

	@Override
	@Transactional
	public boolean updateTopCoin(Integer cmcId, Integer position, String name, String symbol, Double marketCap,
			Double usdPrice, Double usdVolume24h) {
		
		Session session = sessionFactory.getCurrentSession();
		TopCoins topCoin = getTopCoinByPosition(position);
		topCoin.setCmcId(cmcId);
		topCoin.setName(name);
		topCoin.setPosition(position);
		topCoin.setSymbol(symbol);
		topCoin.setMarketCap(marketCap);
		topCoin.setUsdPrice(usdPrice);
		topCoin.setUsdVolume24h(usdVolume24h);
		LocalDateTime localDateTime = LocalDateTime.now();
		Timestamp today = Timestamp.valueOf(localDateTime);
		topCoin.setLastUpdated(today);
		topCoin.setCreatedAt(today);
		session.update(topCoin);
		
		return false;
	}

}
