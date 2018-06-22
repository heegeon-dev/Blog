package com.test.blog.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.test.blog.service.AuthorityService;

@RestController
public class RestWSController {

	@Autowired
	private AuthorityService authorityService;
	
	@RequestMapping(value ="/ws/{action}", method = {RequestMethod.GET, RequestMethod.POST}, produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action) {
		Object resultObject = new Object();
		if("authorityList".equalsIgnoreCase(action)) {
			resultObject=(List<Object>)authorityService.getList(paramMap);
		}else if("authorityread".equalsIgnoreCase(action)) {
			resultObject=(List<Object>)authorityService.getObject(paramMap);
		}
		return resultObject;
	}
}
