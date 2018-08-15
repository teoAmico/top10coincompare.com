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
	private Integer cmcId;
	
	@Column(name = "position")
	private Integer position;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "usd_price")
	private Double usdPrice;
	
	@Column(name = "market_cap")
	private Double marketCap;
	
	@Column(name = "usd_volume_24h")
	private Double usdVolume24h;
	
	@Column(name = "last_updated", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date lastUpdated;
	
	@Column(name = "created_at", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdAt;

	public int getCmcId() {
		return cmcId;
	}

	public void setCmcId(Integer cmcId) {
		this.cmcId = cmcId;
	}

	public Integer getPosition() {
		return position;
	}

	public void setPosition(Integer position) {
		this.position = position;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public Double getUsdPrice() {
		return usdPrice;
	}

	public void setUsdPrice(Double usdPrice) {
		this.usdPrice = usdPrice;
	}

	public Double getMarketCap() {
		return marketCap;
	}

	public void setMarketCap(Double marketCap) {
		this.marketCap = marketCap;
	}

	public Double getUsdVolume24h() {
		return usdVolume24h;
	}

	public void setUsdVolume24h(Double usdVolume24h) {
		this.usdVolume24h = usdVolume24h;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "TopCoins [id=" + id + ", cmcId=" + cmcId + ", position=" + position + ", name=" + name + ", symbol="
				+ symbol + ", usdPrice=" + usdPrice + ", marketCap=" + marketCap + ", usdVolume24h=" + usdVolume24h
				+ ", lastUpdated=" + lastUpdated + ", createdAt=" + createdAt + "]";
	}
	
	
}
