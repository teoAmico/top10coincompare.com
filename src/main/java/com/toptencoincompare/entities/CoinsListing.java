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
	private Integer cmcId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "symbol")
	private String symbol;
	
	@Column(name = "website_slug")
	private String websiteSlug;
	
	@Column(name = "total_supply")
	private Integer totalSupply;
	
	@Column(name = "circulating_supply")
	private Integer circulatingSupply;
	
	@Column(name = "usd_price")
	private Double usdPrice;
	
	@Column(name = "market_cap")
	private Double marketCap;
	
	@Column(name = "usd_volume_24h")
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

	public Integer getCmcId() {
		return cmcId;
	}

	public void setCmcId(Integer cmcId) {
		this.cmcId = cmcId;
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

	public String getWebsiteSlug() {
		return websiteSlug;
	}

	public void setWebsiteSlug(String websiteSlug) {
		this.websiteSlug = websiteSlug;
	}

	public Integer getTotalSupply() {
		return totalSupply;
	}

	public void setTotalSupply(Integer totalSupply) {
		this.totalSupply = totalSupply;
	}

	public Integer getCirculatingSupply() {
		return circulatingSupply;
	}

	public void setCirculatingSupply(Integer circulatingSupply) {
		this.circulatingSupply = circulatingSupply;
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

	public String getLogoLink() {
		return logoLink;
	}

	public void setLogoLink(String logoLink) {
		this.logoLink = logoLink;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
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
		return "CoinsListing [id=" + id + ", cmcId=" + cmcId + ", name=" + name + ", symbol=" + symbol
				+ ", websiteSlug=" + websiteSlug + ", totalSupply=" + totalSupply + ", circulatingSupply="
				+ circulatingSupply + ", usdPrice=" + usdPrice + ", marketCap=" + marketCap + ", usdVolume24h="
				+ usdVolume24h + ", logoLink=" + logoLink + ", lastUpdated=" + lastUpdated + ", isActive=" + isActive
				+ ", createdAt=" + createdAt + "]";
	}
	
	
}
