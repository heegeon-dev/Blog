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

import com.test.blog.service.ShareService;

@Controller
public class aboutMeController {
	
	private final static String MAPPING = "/menu/aboutMe/";

	@Autowired
	private ShareService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap ,@PathVariable String action,
			ModelAndView modelandView, String sqlMapId) {
		String viewName = MAPPING + action;
		Map<String,Object> resultMap = new HashMap<String, Object>();
		Map<String,Object> commentsMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		List<Object> commentsList = new ArrayList<Object>();
		
		if("aboutMe".equalsIgnoreCase(action)){
			resultList = (List<Object>) service.getList(sqlMapId,paramMap);
			commentsList=((List<Object>) service.comments_getList(sqlMapId, resultList));
		}else if("edit_register".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.edit_register(sqlMapId, paramMap);
			viewName = MAPPING + "aboutMe";
		}else if("insert_register".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.insert_register(sqlMapId, paramMap);
			viewName = MAPPING + "aboutMe";
		}else if("delete_register".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.delete_register(sqlMapId, paramMap);
			viewName = MAPPING + "aboutMe";
		}else if("insert".equalsIgnoreCase(action)){
			
		}else if("edit".equalsIgnoreCase(action)){
			resultMap = (Map<String, Object>)service.getObject(sqlMapId, paramMap);
		}else if("insert_comments_register".equalsIgnoreCase(action)) {
			service.insert_comments_register(sqlMapId, paramMap);
			resultList = (List<Object>) service.getList(sqlMapId,paramMap);
			commentsList=((List<Object>) service.comments_getList(sqlMapId, resultList));
			viewName = MAPPING + "aboutMe";
		}else if("delete_comments_register".equalsIgnoreCase(action)) {
			service.delete_comments_register(sqlMapId, paramMap);
			resultList = (List<Object>) service.getList(sqlMapId,paramMap);
			commentsList=((List<Object>) service.comments_getList(sqlMapId, resultList));
			viewName = MAPPING + "aboutMe";
		}

		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap",paramMap);
		modelandView.addObject("resultMap",resultMap);
		modelandView.addObject("commentsMap",commentsMap);
		modelandView.addObject("resultList",resultList);
		modelandView.addObject("commentsList",commentsList);
		return modelandView;
	}
}