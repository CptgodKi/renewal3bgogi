package com.gogi.proj.admin.project.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectsServiceImpl implements ProjectsService{

	@Autowired
	private ProjectsDAO projectsDao;
}
