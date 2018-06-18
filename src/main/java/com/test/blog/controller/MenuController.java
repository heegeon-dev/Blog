package com.test.blog.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/menu")
public class MenuController {
	
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	@RequestMapping(value = "/aboutMe",method = RequestMethod.GET )
	public void aboutMe() {
		
	}
	@RequestMapping(value = "/news",method = RequestMethod.GET)
	public void news() {

	}
	
	@RequestMapping(value = "/acc",method = RequestMethod.GET)
	public void acc() {
		 

	   }
	@RequestMapping(value = "/bag",method = RequestMethod.GET)
	public void bag() {
	 

	}
	@RequestMapping(value = "/clothing",method = RequestMethod.GET)
	public void clothing() {
	  

	}
	@RequestMapping(value = "/etc",method = RequestMethod.GET)
	public void etc() {
	  

	}
	@RequestMapping(value = "/shoes",method = RequestMethod.GET)
	public void shoes() {
	

	}
	@RequestMapping(value = "/subscribeManage",method = RequestMethod.GET)
	public void subscribeManage() {
	

	}

}
