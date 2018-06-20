package com.test.blog.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.blog.service.MenuService;

@Controller
public class MenuController {
	
	private final static String MAPPING = "/menu/";

	@Autowired
	private MenuService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView aboutMe(@RequestParam Map<String, Object> paramMap ,@PathVariable String action,
			ModelAndView modelandView) {
		String viewName = MAPPING + action;
		Map<String,Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("news".equalsIgnoreCase(action)){
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("acc".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("bag".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("clothing".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("etc".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("shoes".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("clothing_insert".equalsIgnoreCase(action)) {
			
		}else if("shoes_insert".equalsIgnoreCase(action)) {
			
		}else if("bag_insert".equalsIgnoreCase(action)) {
			
		}else if("acc_insert".equalsIgnoreCase(action)) {
			
		}else if("etc_insert".equalsIgnoreCase(action)) {
			
		}else if("news_insert".equalsIgnoreCase(action)) {
			
		}else if("news_register".equalsIgnoreCase(action)) {
			resultMap = (Map<String,Object>) service.getObject("board.insert", paramMap);
			viewName = MAPPING + "news";
		}else if("aboutMe_insert".equalsIgnoreCase(action)) {
			
		}else if("clothing_edit".equalsIgnoreCase(action)) {
			
		}else if("aboutMe_edit".equalsIgnoreCase(action)) {
			
		}else if("acc_edit".equalsIgnoreCase(action)) {
			
		}else if("bag_edit".equalsIgnoreCase(action)) {
			
		}else if("etc_edit".equalsIgnoreCase(action)) {
			
		}else if("news_edit".equalsIgnoreCase(action)) {
			
		}else if("subscribeManage".equalsIgnoreCase(action)) {
			
		}else if("shoes_edit".equalsIgnoreCase(action)) {
			
		}
		
		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap",paramMap);
		modelandView.addObject("resultMap",resultMap);
		modelandView.addObject("resultList",resultList);
		return modelandView;
	}
}