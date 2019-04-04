package com.gogi.proj.admin.project.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectsDAOMybatis extends SqlSessionDaoSupport implements ProjectsDAO {

	private String namespace = "admin.project";
}
