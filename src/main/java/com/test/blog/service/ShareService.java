package com.test.blog.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.blog.dao.Sharedao;

@Service
public class ShareService {

	@Autowired
	private Sharedao dao;
	
	public Object insert_register(String sqlMapId, Object dataMap) {
		
		dao.getObject("board.insert_board", dataMap);
		dao.getObject("board.insert_board_img", dataMap);
		dao.getObject("board.insert_board_img_rel", dataMap);
		Object resultData = (List<Object>)dao.getList("board.read", dataMap);
		return resultData;
	}
	
	public Object edit_register(String sqlMapId, Object dataMap) {
		
		dao.getObject("board.update_board", dataMap);
		dao.getObject("board.update_board_img", dataMap);
		Object resultData = (List<Object>)dao.getList("board.read", dataMap);
		return resultData;
	}
	public Object delete_register(String sqlMapId, Object dataMap) {
		
		dao.getObject("board.delete_board_img_rel", dataMap);
		dao.getObject("board.delete_board_img", dataMap);
		dao.getObject("board.delete_board", dataMap);
		Object resultData = (List<Object>)dao.getList("board.read", dataMap);
		return resultData;
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		Object resultData = (List<Object>)dao.getList("board.read",dataMap);
		return resultData;
	}
	public Object getObject(String sqlMapId, Object dataMap) {
		
		Object resultData = (Map<String, Object>)dao.getObject("board.edit_read",dataMap);
		
		return resultData;
	}
	
	
}

