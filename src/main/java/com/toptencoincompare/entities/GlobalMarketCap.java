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
@Table(name="global_market_cap")
public class GlobalMarketCap {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name ="id")
	private int id;
	
	@Column(name = "market_cap")
	private Double marketCap;
	
	@Column(name = "last_updated", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date lastUpdated;
	
	@Column(name = "created_at", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdAt;

	public Double getMarketCap() {
		return marketCap;
	}

	public void setMarketCap(Double marketCap) {
		this.marketCap = marketCap;
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
		return "GlobalMarketCap [id=" + id + ", marketCap=" + marketCap + ", lastUpdated=" + lastUpdated
				+ ", createdAt=" + createdAt + "]";
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}
