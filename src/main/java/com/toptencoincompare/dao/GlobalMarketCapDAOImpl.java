package com.toptencoincompare.dao;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.toptencoincompare.entities.GlobalMarketCap;

@Repository
public class GlobalMarketCapDAOImpl implements GlobalMarketCapDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public GlobalMarketCap getGlobalMarketCap() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<GlobalMarketCap> gmcQuery = session.createQuery("from GlobalMarketCap", GlobalMarketCap.class);
		
		GlobalMarketCap globalMarketCap = gmcQuery.getSingleResult();
		
		return globalMarketCap;
	}

	@Override
	@Transactional
	public boolean updateGlobalMarketCap(Double marketCap) {
		Session session = sessionFactory.getCurrentSession();
		GlobalMarketCap gmc = getGlobalMarketCap();
		gmc.setMarketCap(marketCap);
		LocalDateTime localDateTime = LocalDateTime.now();
		Timestamp timestamp = Timestamp.valueOf(localDateTime);
		gmc.setLastUpdated(timestamp);
		
		session.update(gmc);
		
		return true;
	}
	
	

}
