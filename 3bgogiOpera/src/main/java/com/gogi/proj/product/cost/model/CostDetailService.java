package com.gogi.proj.product.cost.model;

import java.util.List;

import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingListVO;

public interface CostDetailService {
	
	public int selectCostsPkByCostName(int optionPk, OptionsCostsMatchingListVO optionsCostsMatchingListVO);

}
