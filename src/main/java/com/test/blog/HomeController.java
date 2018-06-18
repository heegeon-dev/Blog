package com.test.blog;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home01(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/home";
	}
	
	@RequestMapping(value = "/LoginStatus2", method = RequestMethod.GET)
	public String home02() {
		return "/LoginStatus2";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home03() {
		return "/home";
	}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String home04() {
		return "/Logout";
	}
	
	@RequestMapping(value = "/subscribeManage",method = RequestMethod.GET)
	public void subscribeManage() {
	

	}
	
}
