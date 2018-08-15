package com.toptencoincompare.api;


import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.client.RestTemplate;

public class GlobalMarketCapApi {
	

	RestTemplate restTemplate;
	
	public GlobalMarketCapApi() {
		this.restTemplate = new RestTemplate();
	}
	
	
	public Double getGlobalMarketCap() {
		String globalMarketJson = this.restTemplate.getForObject("https://api.coinmarketcap.com/v2/global/?structure=array", String.class);
		Double global = null;
		try {
			JSONObject jsonObject = new JSONObject(globalMarketJson);
			global = jsonObject.getJSONObject("data")
					.getJSONObject("quotes")
					.getJSONObject("USD")
					.getDouble("total_market_cap");
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return global;
	}
}
