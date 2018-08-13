package com.toptencoincompare.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="top_coins")
public class TopCoins {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name ="id")
	private int id;
	
	@Column(name = "cmc_id")
	private int cmcId;
	
	@Column(name = "posiiton")
	private int posiiton;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "usd_price")
	private Double usdPrice;
	
	@Column(name = "market_cap")
	private Double marketCap;
	
	@Column(name = "usd_volum_24h")
	private Double usdVolume24h;
	
	@Column(name = "last_updated", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date lastUpdated;
	
	@Column(name = "created_at", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdAt;
}
