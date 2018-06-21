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
		}else if("aboutMe".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("board.read",paramMap);
		}else if("clothing_insert".equalsIgnoreCase(action)) {
			
		}else if("clothing_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "clothing";
		}else if("shoes_insert".equalsIgnoreCase(action)) {
			
		}else if("shoes_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "shoes";
		}else if("bag_insert".equalsIgnoreCase(action)) {
			
		}else if("bag_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "bag";
		}else if("acc_insert".equalsIgnoreCase(action)) {
			
		}else if("acc_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "acc";
		}else if("etc_insert".equalsIgnoreCase(action)) {
		
		}else if("etc_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "etc";
		}else if("news_insert".equalsIgnoreCase(action)) {
			
		}else if("news_edit_register".equalsIgnoreCase(action)) {
			service.getObject("board.update_board", paramMap);
			service.getObject("board.update_board_img", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "news";
			
		}else if("news_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "news";	
		}else if("aboutMe_insert".equalsIgnoreCase(action)) {
			
		}else if("aboutMe_insert_register".equalsIgnoreCase(action)) {
			service.getObject("board.insert_board", paramMap);
			service.getObject("board.insert_board_img", paramMap);
			service.getObject("board.insert_board_img_rel", paramMap);
			resultList = (List<Object>) service.getList("board.read",paramMap);
			viewName = MAPPING + "aboutMe";
		}else if("acc_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}else if("aboutMe_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}else if("clothing_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}else if("bag_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}else if("etc_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}else if("news_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}else if("subscribeManage".equalsIgnoreCase(action)) {
			
		}else if("shoes_edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("board.edit_read", paramMap);
		}
		
		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap",paramMap);
		modelandView.addObject("resultMap",resultMap);
		modelandView.addObject("resultList",resultList);
		return modelandView;
	}
}