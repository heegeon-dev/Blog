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

import com.test.blog.service.shoesService;

@Controller
public class shoesController {
	
	private final static String MAPPING = "/menu/shoes/";

	@Autowired
	private shoesService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView aboutMe(@RequestParam Map<String, Object> paramMap ,@PathVariable String action,
			ModelAndView modelandView) {
		String viewName = MAPPING + action;
		Map<String,Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("shoes".equalsIgnoreCase(action)){
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("edit".equalsIgnoreCase(action)) {
		}else if("insert".equalsIgnoreCase(action)) {
		}

		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap",paramMap);
		modelandView.addObject("resultMap",resultMap);
		modelandView.addObject("resultList",resultList);
		return modelandView;
	}
}