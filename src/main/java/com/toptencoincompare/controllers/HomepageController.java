package com.toptencoincompare.controllers;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.toptencoincompare.api.CoinListingApi;
import com.toptencoincompare.api.GlobalMarketCapApi;
import com.toptencoincompare.dao.CoinsListingDAO;
import com.toptencoincompare.dao.GlobalMarketCapDAO;
import com.toptencoincompare.dao.TopCoinsDAO;
import com.toptencoincompare.entities.CoinsListing;
import com.toptencoincompare.entities.GlobalMarketCap;

@Controller
public class HomepageController {

	@Autowired
	private GlobalMarketCapDAO globalMarketCapDAO;
	
	@Autowired
	private CoinsListingDAO coinsListingDAO;
	
	@Autowired
	private TopCoinsDAO topCoinsDAO;
	
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("homepage");
		return model;
	}
	
	
	@RequestMapping("/coin-compare")
	public ModelAndView search(@RequestParam(value = "ref") Optional<Integer> coinId,
			@RequestParam(value = "holding") Optional<Double> holding) {
		ModelAndView model = new ModelAndView("homepage");
		Boolean result = false;
		Double holdingQty = 0.0;
		if(holding.isPresent()) {
			holdingQty =  holding.get();
		}
		
		if(coinId.isPresent()) {

			//Global market cap data
			GlobalMarketCap globalMarketCap = globalMarketCapDAO.getGlobalMarketCap();
			
			LocalDateTime localDateTimeToday = LocalDateTime.now();
			Timestamp today = Timestamp.valueOf(localDateTimeToday);
			
			long todayDateMin = TimeUnit.MILLISECONDS.toMinutes(today.getTime());
			
			long gmcDateMin = TimeUnit.MILLISECONDS.toMinutes(globalMarketCap.getLastUpdated().getTime());
			if((todayDateMin - gmcDateMin) >= 10) {
				GlobalMarketCapApi gmc = new GlobalMarketCapApi();
				Double cmcGlobalMarketCap = gmc.getGlobalMarketCap();
				DecimalFormat df = new DecimalFormat("#.00");
				Double marketCap = Double.parseDouble(df.format(cmcGlobalMarketCap));
				globalMarketCapDAO.updateGlobalMarketCap(marketCap);
				globalMarketCap = globalMarketCapDAO.getGlobalMarketCap();
				
			}
			//Coin Listed 
			CoinsListing coin = coinsListingDAO.getCoin(coinId.get());
			long coinDateMin = TimeUnit.MILLISECONDS.toMinutes(coin.getLastUpdated().getTime());
			if((todayDateMin - coinDateMin) >= 10) {
				//api call update coin data
				CoinListingApi cl = new CoinListingApi();
				List coinListing = cl.getCoin(coin.getCmcId());
				coinsListingDAO.updateCoin(coinId.get(),coinListing.get(0).toString(), Integer.parseInt(coinListing.get(1).toString()), 
						Integer.parseInt(coinListing.get(2).toString()),  Double.parseDouble(coinListing.get(3).toString()), 
						 Double.parseDouble(coinListing.get(4).toString()), coinListing.get(5).toString(), coinListing.get(6).
						 toString(),  Double.parseDouble(coinListing.get(7).toString()));

				coin = coinsListingDAO.getCoin(coinId.get());
				
			}
			Double usdPrice = coin.getUsdPrice() != null ? coin.getUsdPrice() : 0.0 ;
			Double usdHolding = (holdingQty *  usdPrice);
			Double coinMarketCap = coin.getMarketCap() != null ? coin.getMarketCap() :0.0 ;
			Double share = (100 * coinMarketCap) / globalMarketCap.getMarketCap();
			
			//UI Variables
			model.addObject("global_market_cap", globalMarketCap.getMarketCap());
			model.addObject("coin_name", coin.getName());
			model.addObject("coin_symbol", coin.getSymbol());
			model.addObject("coin_total_supply", coin.getTotalSupply());
			model.addObject("coin_circulating_supply", coin.getCirculatingSupply());
			model.addObject("coin_usd_price", usdPrice);
			model.addObject("coin_market_cap", coin.getMarketCap());
			model.addObject("coin_usd_volume_24h", coin.getUsdVolume24h());
			model.addObject("coin_logo", coin.getLogoLink());
			model.addObject("coin_last_update",coin.getLastUpdated());
			model.addObject("coin_usd_holdings", usdHolding);
			model.addObject("coin_market_share", share);
			result = true;
		}
		model.addObject("holdings", holdingQty);
		model.addObject("show_result", result);
		return model;
	}
}
