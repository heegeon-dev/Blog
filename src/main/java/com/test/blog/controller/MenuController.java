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
	@RequestMapping(value = "/clothing_insert",method = RequestMethod.GET)
	public void clothing_insert() {
	  

	}
	@RequestMapping(value = "/shoes_insert",method = RequestMethod.GET)
	public void shoes_insert() {
	  

	}
	@RequestMapping(value = "/bag_insert",method = RequestMethod.GET)
	public void bag_insert() {
	  

	}
	@RequestMapping(value = "/acc_insert",method = RequestMethod.GET)
	public void acc_insert() {
	  

	}
	@RequestMapping(value = "/etc_insert",method = RequestMethod.GET)
	public void etc_insert() {
	  

	}
	@RequestMapping(value = "/news_insert",method = RequestMethod.GET)
	public void news_insert() {
	  

	}
	@RequestMapping(value = "/aboutMe_insert",method = RequestMethod.GET)
	public void aboutMe_insert() {
	  

	}
	@RequestMapping(value = "/subscribeManage",method = RequestMethod.GET)
	public void subscribeManage() {
	

	}
	@RequestMapping(value = "/clothing_edit",method = RequestMethod.GET)
	public void clothing_edit() {
	  

	}
	@RequestMapping(value = "/aboutMe_edit",method = RequestMethod.GET)
	public void aboutMe_edit() {
	  

	}
	@RequestMapping(value = "/acc_edit",method = RequestMethod.GET)
	public void acc_edit() {
	  

	}
	@RequestMapping(value = "/bag_edit",method = RequestMethod.GET)
	public void bag_edit() {
	  

	}
	@RequestMapping(value = "/etc_edit",method = RequestMethod.GET)
	public void etc_edit() {
	  

	}
	@RequestMapping(value = "/news_edit",method = RequestMethod.GET)
	public void news_edit() {
	  

	}
	@RequestMapping(value = "/shoes_edit",method = RequestMethod.GET)
	public void shoes_edit() {
	  

	}

}
