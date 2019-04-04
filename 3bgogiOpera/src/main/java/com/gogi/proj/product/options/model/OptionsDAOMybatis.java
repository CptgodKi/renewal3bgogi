package com.gogi.proj.product.options.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gogi.proj.product.options.vo.OptionsCostsMatchingVO;
import com.gogi.proj.product.options.vo.OptionsVO;

@Repository
public class OptionsDAOMybatis extends SqlSessionDaoSupport implements OptionsDAO{

	private String namespace = "products.option";
	
	private String optionsCostsMatchingNameSpace = "products.options_costs_matching";
	
	@Override
	public int insertOptions(OptionsVO optionVO) {
		// TODO Auto-generated method stub
		return getSqlSession().insert(namespace+".insertOptions",optionVO);
	}

	@Override
	public int insertOptionsCostsMatching(OptionsCostsMatchingVO optionsCostsMatchingVO) {
		// TODO Auto-generated method stub
		return getSqlSession().insert(optionsCostsMatchingNameSpace+".insertOptionsCostsMatching",optionsCostsMatchingVO);
	}
	
}
