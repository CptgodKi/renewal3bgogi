package com.gogi.proj.admin.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gogi.proj.admin.project.model.ProjectsService;

@Controller
@RequestMapping(value="/project")
public class ProjectsController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectsController.class);
	
	@Autowired
	private ProjectsService projectsService;
	
	@RequestMapping(value="/insert_project.do", method=RequestMethod.GET)
	public String insertProjectGet() {
		
		return "admin/project/insert_project";
	}
}
