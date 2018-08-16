package com.toptencoincompare.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DisclaimerController {

	@RequestMapping("/disclaimer")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("disclaimer");
		return model;
	}
}
