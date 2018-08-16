package com.toptencoincompare.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {

	@RequestMapping("/about")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}
}
