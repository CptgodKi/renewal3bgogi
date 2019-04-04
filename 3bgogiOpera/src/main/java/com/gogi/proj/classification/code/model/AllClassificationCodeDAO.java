package com.gogi.proj.classification.code.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gogi.proj.classification.code.vo.ClassificationVO;
import com.gogi.proj.classification.code.vo.CostCodeVO;
import com.gogi.proj.classification.code.vo.ExcelOrderSeqVO;
import com.gogi.proj.classification.code.vo.PackingCombineCodeVO;

@Repository
public class AllClassificationCodeDAO extends SqlSessionDaoSupport implements AllClassificationCodeDAOMybatis{

	private String namespace = "classification.code";
	private String packingCombineCode = "classification.code.packing_combine_code";
	private String excelOrderSeq = "classification.code.excel_order_seq";
	
	
	public List<CostCodeVO> selectCostCodeList(){
		
		return getSqlSession().selectList(namespace+".selectCostCodeList");
	}


	@Override
	public List<ClassificationVO> selectClassificationList() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace+".selectClassificationList");
	}


	@Override
	public List<ExcelOrderSeqVO> selectExcelOrderSeqCodeList() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(excelOrderSeq+".selectExcelOrderSeqCodeList");
	}


	@Override
	public List<PackingCombineCodeVO> selectPackingCombineCodeList() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(packingCombineCode+".selectPackingCombineCodeList");
	}
}
