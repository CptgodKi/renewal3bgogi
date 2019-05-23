package com.gogi.proj.product.cost.model;

import java.util.List;

import com.gogi.proj.paging.PaginationInfo;
import com.gogi.proj.product.cost.vo.CostDetailVO;
import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingListVO;

public interface CostDetailDAO {

	public List<CostsVO> selectCostsPkByCostName(String costName);
	
	/*원가 세부사항 가져오기*/
	public List<CostDetailVO> selectAllCostDetail(PaginationInfo info);
	
	/*원가 세부사항 삽입하기*/
	public int insertCostDetail(CostDetailVO costDetailVO);
	
	/*원가 세부사항 총 개수 파악하기*/
	public int selectCostDetailCount(PaginationInfo info);
	
	/*원가 세부사항 원가 분류코드로 가져오기*/
	public List<CostDetailVO> selectCostDetailByCcpk(int ccPk);
}
