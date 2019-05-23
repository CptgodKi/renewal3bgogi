package com.gogi.proj.product.cost.model;

import java.util.List;

import com.gogi.proj.paging.PaginationInfo;
import com.gogi.proj.product.cost.vo.CostDetailVO;
import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingListVO;

public interface CostDetailService {
	
	public int selectCostsPkByCostName(int optionPk, OptionsCostsMatchingListVO optionsCostsMatchingListVO);
	
	public List<CostDetailVO> selectAllCostDetail(PaginationInfo info);
	
	public int insertCostDetail(CostDetailVO costDetailVO);

	public int selectCostDetailCount(PaginationInfo info);
	
	public List<CostDetailVO> selectCostDetailByCcpk(int ccPk);
}
