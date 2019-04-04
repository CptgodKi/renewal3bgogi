package com.gogi.proj.main.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gogi.proj.security.AdminVO;

@Controller
@RequestMapping("/main")
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/home.do", method=RequestMethod.GET)
	public String Home(HttpSession session) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		AdminVO vo = (AdminVO)auth.getPrincipal();
		
		logger.info("admin_id = {}", vo.getUsername());
		logger.info("admin_name = {}", vo.getAdminname());
		
		return "menu/main";
		
	}
}
