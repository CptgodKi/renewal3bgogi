package com.gogi.proj.product.cost.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingListVO;

@Repository
public class CostDetailDAOMybatis extends SqlSessionDaoSupport implements CostDetailDAO{

	private String namespace = "cost.costs";
	
	@Override
	public List<CostsVO> selectCostsPkByCostName(String costName) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace+".selectCostsPkByCostName",costName);
	}
	
	

}
