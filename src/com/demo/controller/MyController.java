package com.demo.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.demo.dao.UserDao;

@Controller
public class MyController {
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/index2")
	public String index2() {
		return "index2";
	}


	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/top")
	public String top() {
		return "top";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/person")
	public String person(String name,Model model) {
		model.addAttribute("nname", name);
		System.out.println(name);
		return "person";
	}
	
	@RequestMapping("/users")
	@ResponseBody
	public String users(int page,int rows) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
 		map.put("start", (page-1)*rows);
		map.put("size", rows);
		return "{\"rows\": "+UserDao.getUserList(map).toJSONString()+",\"total\": 92}";
	}
	
	@RequestMapping("/loans")
	@ResponseBody
	public String loans() {
		return "{\"rows\": "+UserDao.getLoanList().toJSONString()+",\"totals\": 26}";
	}
	
	@RequestMapping("/left")
	public String left() {
		return "left";
	}
	
	@RequestMapping("/space")
	public String space() {
		return "space";
	}
	
	@RequestMapping("/demo")
	public String demo() {
		return "demo2";
	}
	
	@RequestMapping("/easyUI")
	public String easyUI() {
		return "easyUI";
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
//	@ResponseBody
	public String login(String username, String pwd, Model model) throws Exception {
		String userpass = UserDao.getUserPass(username);
//		System.out.println(userpass);
		if (!userpass.equals(pwd)) {
			model.addAttribute("error", "用户名错误");
			return "login";
		}
		model.addAttribute("username", username);
		return "index";
	}
}
