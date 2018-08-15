package com.toptencoincompare.api;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.web.client.RestTemplate;

public class CoinListingApi {
	
	RestTemplate restTemplate;
	
	public CoinListingApi() {
		this.restTemplate = new RestTemplate();
	}
	
	public List getCoin(int Id) {

		String coinJson = restTemplate.getForObject("https://api.coinmarketcap.com/v2/ticker/"+Id+"/", String.class);
		List<String> coin = new ArrayList<String>();
		DecimalFormat df = new DecimalFormat("#.00");
		try {
			JSONObject jsonObject = new JSONObject(coinJson);
			coin.add(jsonObject.getJSONObject("data").getString("name"));
			coin.add(Long.toString(jsonObject.getJSONObject("data").getLong("circulating_supply")));
			coin.add(Long.toString(jsonObject.getJSONObject("data").getLong("total_supply")));
			
			coin.add(df.format(jsonObject.getJSONObject("data")
					.getJSONObject("quotes")
					.getJSONObject("USD")
					.getDouble("price")));
			coin.add(df.format(jsonObject.getJSONObject("data")
					.getJSONObject("quotes")
					.getJSONObject("USD")
					.getDouble("market_cap")));
			Long sec =jsonObject.getJSONObject("data").getLong("last_updated");
			Date d = new Date(sec * 1000);
			DateFormat datef = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			coin.add(datef.format(d));
			coin.add(jsonObject.getJSONObject("data").getString("symbol"));
			coin.add(df.format(jsonObject.getJSONObject("data")
					.getJSONObject("quotes")
					.getJSONObject("USD")
					.getDouble("volume_24h")));
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return coin;
	}
}
