package com.toptencoincompare.controllers;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomepageController {

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
		if(coinId.isPresent()) {
			//query db or api call and db updates
			
			
			
			
			
			result = true;
		}
		if(holding.isPresent()) {
			model.addObject("holdings", holding.get());
		}else {
			model.addObject("holdings", 0);
		}
		
		model.addObject("show_result", result);
		return model;
	}
}
