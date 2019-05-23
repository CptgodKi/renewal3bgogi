package com.gogi.proj.product.cost.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gogi.proj.paging.PaginationInfo;
import com.gogi.proj.product.cost.vo.CostDetailVO;
import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.model.OptionsDAO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingListVO;
import com.gogi.proj.product.options.vo.OptionsCostsMatchingVO;

@Service
public class CostDetailServiceImpl implements CostDetailService{

	@Autowired
	private CostDetailDAO costDetailDAO;
	
	@Autowired
	private OptionsDAO optionsDAO;
	
	@Transactional
	@Override
	public int selectCostsPkByCostName(int optionPk, OptionsCostsMatchingListVO optionsCostsMatchingListVO) {
		// TODO Auto-generated method stub
		int count = 0;
		
		for(int i = 0 ; i < optionsCostsMatchingListVO.getOptionMatching().size(); i++) {
			
			List<CostsVO> costsVoList = costDetailDAO.selectCostsPkByCostName(optionsCostsMatchingListVO.getOptionMatching().get(i));
			
			for(int j=0; j<costsVoList.size(); j++) {
				
				OptionsCostsMatchingVO optionsCostsMatchingVO = new OptionsCostsMatchingVO();
				optionsCostsMatchingVO.setOptionFk(optionPk);
				optionsCostsMatchingVO.setCostFk(costsVoList.get(j).getCostPk());
				optionsCostsMatchingVO.setOcmGramRecalFlag(optionsCostsMatchingListVO.getOcmGramRecalFlag().get(i));
				optionsCostsMatchingVO.setOcmProductionDivide(optionsCostsMatchingListVO.getOcmProductionDivide().get(i));
				optionsCostsMatchingVO.setOcmEach(optionsCostsMatchingListVO.getOcmEach().get(i));
				
				optionsDAO.insertOptionsCostsMatching(optionsCostsMatchingVO);
				
				count++;
				
			}
			
		}
		
		return count;//costDetailDAO.selectCostsPkByCostName(optionsCostsMatchingListVO);
	}

	@Override
	public List<CostDetailVO> selectAllCostDetail(PaginationInfo info) {
		// TODO Auto-generated method stub
		return costDetailDAO.selectAllCostDetail(info);
	}

	@Override
	public int insertCostDetail(CostDetailVO costDetailVO) {
		// TODO Auto-generated method stub
		return costDetailDAO.insertCostDetail(costDetailVO);
	}

	@Override
	public int selectCostDetailCount(PaginationInfo info) {
		// TODO Auto-generated method stub
		return costDetailDAO.selectCostDetailCount(info);
	}

	@Override
	public List<CostDetailVO> selectCostDetailByCcpk(int ccPk) {
		// TODO Auto-generated method stub
		return costDetailDAO.selectCostDetailByCcpk(ccPk);
	}

}
