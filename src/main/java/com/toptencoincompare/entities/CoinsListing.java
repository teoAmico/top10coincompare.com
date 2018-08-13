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

import org.hibernate.annotations.Type;


@Entity
@Table(name="coins_listing")
public class CoinsListing {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name ="id")
	private int id;
	
	@Column(name = "cmc_id")
	private int cmcId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "website_slug")
	private String websiteSlug;
	
	@Column(name = "total_supply")
	private int totalSupply;
	
	@Column(name = "circulation_supply")
	private int circulatingSupply;
	
	@Column(name = "usd_price")
	private Double usdPrice;
	
	@Column(name = "market_cap")
	private Double marketCap;
	
	@Column(name = "usd_volum_24h")
	private Double usdVolume24h;
	
	@Column(name = "logo_link")
	private String logoLink;
	
	@Column(name = "last_updated", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date lastUpdated;
	
	@Column(name = "is_active", columnDefinition = "TINYINT")
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private Boolean isActive;
	
	@Column(name = "created_at", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdAt;
	
	
}
