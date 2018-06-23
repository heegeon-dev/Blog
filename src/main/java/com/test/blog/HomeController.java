package com.test.blog;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.log4j.net.SyslogAppender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.blog.service.ShareService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ShareService service;
	
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView home01(Locale locale, @RequestParam Map<String, Object> paramMap,ModelAndView modelandView) {
		List<Object> HomeList = new ArrayList<Object>();
		List<Object> Home_firstList = new ArrayList<Object>();
		List<Object> commentsList = new ArrayList<Object>();

		String viewname = "/home";
		
		HomeList = (List<Object>) service.Popular_Post("", paramMap);
		Home_firstList = (List<Object>)service.first_post("",paramMap);
		commentsList=((List<Object>) service.comments_getList("", Home_firstList));

		modelandView.setViewName(viewname);
		modelandView.addObject("HomeList",HomeList);
		modelandView.addObject("Home_firstList",Home_firstList);
		modelandView.addObject("commentsList",commentsList);

		return modelandView;
	}
	@RequestMapping(value = "/subscribeManage",method = RequestMethod.GET)
	public void subscribeManage() {
	

	}
	
}
