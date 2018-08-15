package com.toptencoincompare.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.toptencoincompare.entities.TopCoins;

@Repository
public class TopCoinsDAOImpl implements TopCoinsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<TopCoins> getTopCoins() {
		// TODO Auto-generated method stub
		return null;
	}

}
