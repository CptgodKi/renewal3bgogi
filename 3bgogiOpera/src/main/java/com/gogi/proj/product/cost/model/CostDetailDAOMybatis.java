package com.gogi.proj.product.cost.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gogi.proj.paging.PaginationInfo;
import com.gogi.proj.product.cost.vo.CostDetailVO;
import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingListVO;

@Repository
public class CostDetailDAOMybatis extends SqlSessionDaoSupport implements CostDetailDAO{

	//다중 원가 관련
	private String costs = "cost.costs";
	
	//순수 원가 관련
	private String costDetail = "cost.cost_detail";
	
	@Override
	public List<CostsVO> selectCostsPkByCostName(String costName) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(costs+".selectCostsPkByCostName",costName);
	}

	@Override
	public List<CostDetailVO> selectAllCostDetail(PaginationInfo info) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(costDetail+".selectAllCostDetail", info);
	}

	@Override
	public int insertCostDetail(CostDetailVO costDetailVO) {
		// TODO Auto-generated method stub
		return getSqlSession().insert(costDetail+".insertCostDetail", costDetailVO);
	}

	@Override
	public int selectCostDetailCount(PaginationInfo info) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(costDetail+".selectCostDetailCount", info);
	}

	@Override
	public List<CostDetailVO> selectCostDetailByCcpk(int ccPk) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(costDetail+".selectCostDetailByCcpk", ccPk);
	}
	
	

}
