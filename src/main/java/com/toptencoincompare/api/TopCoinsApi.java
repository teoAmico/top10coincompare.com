package com.toptencoincompare.api;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.web.client.RestTemplate;

public class TopCoinsApi {
	
	RestTemplate restTemplate;
	
	public TopCoinsApi() {
		this.restTemplate = new RestTemplate();
	}
	
	public List getTop10Coins() {
		String coinsListJson = restTemplate.getForObject("https://api.coinmarketcap.com/v2/ticker/?start=1&limit=11&sort=rank&structure=array", String.class);
		List<List> coins = new ArrayList<List>();
		DecimalFormat df = new DecimalFormat("#.00");
		int count = 1;
		try {
			JSONObject jsonObject = new JSONObject(coinsListJson);
			JSONArray arr = jsonObject.getJSONArray("data");
			for(int i = 0; i < arr.length(); i++){
				if(count >10) {
					break;
				}
				String symbol = arr.getJSONObject(i).getString("symbol");
				if(symbol.equals("USDT")) {
					continue;
				}
				List<String> list = new ArrayList<String>();
				JSONObject quote = arr.getJSONObject(i).getJSONObject("quotes")
						.getJSONObject("USD");
				list.add(Integer.toString(arr.getJSONObject(i).getInt("id")));
				list.add(Integer.toString(count));
				list.add(arr.getJSONObject(i).getString("name"));
				list.add(symbol);
				list.add(df.format(quote.getDouble("market_cap")));
				list.add(df.format(quote.getDouble("price")));
				list.add(df.format(quote.getDouble("volume_24h")));
			    coins.add(list);
			    count +=1;
			}
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return coins;
	}
}
