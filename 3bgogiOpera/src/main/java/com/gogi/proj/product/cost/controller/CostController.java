package com.gogi.proj.product.cost.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gogi.proj.classification.code.model.AllClassificationCodeService;
import com.gogi.proj.classification.code.vo.CostCodeVO;
import com.gogi.proj.product.cost.vo.CostDetailVO;

@Controller
@RequestMapping("/products")
public class CostController {

	private static final Logger logger = LoggerFactory.getLogger(CostController.class);
	
	@Autowired
	private AllClassificationCodeService accService;
	
	
	/**
	 * @MethodName : insertCostDetailGet
	 * @date : 2019. 1. 23.
	 * @author : Jeon KiChan
	 * @메소드설명 : 데이터 관리/데이터입력/원가 상세사항 입력 페이지 들어가기
	 */
	@RequestMapping(value="/insert/cost_detail.do", method=RequestMethod.GET)
	public String insertCostDetailGet(Model model) {
		
		logger.info("Insert CostDetail Page");
		
		// 원가 상세사항을 입력할 때 원가의 분류 코드 조회 후 뿌리기
		List<CostCodeVO> ccList = accService.selectCostCodeList();
		
		model.addAttribute("ccList", ccList);
		
		return "product/insert/cost_detail";
	}
	
	
	/**
	 * @MethodName : insertCostDetailPost
	 * @date : 2019. 1. 23.
	 * @author : Jeon KiChan
	 * @param costDetailVo
	 * @메소드설명 : 원가 사항을 입력 받은 뒤 데이터 입력
	 */
	@RequestMapping(value="/insert/cost_detail.do",method=RequestMethod.POST)
	public String insertCostDetailPost(@ModelAttribute CostDetailVO costDetailVo) {
		
		return "product/insert/cost_detail";
	}
	
	/**
	 * @MethodName : insertCostOptionGet
	 * @date : 2019. 2. 18.
	 * @author : Jeon KiChan
	 * @메소드설명 : 원가가 넣는 페이지 불러오기
	 */
	@RequestMapping(value="/insert/cost_option.do",method=RequestMethod.GET)
	public String insertCostOptionGet() {
		
		logger.info("Insert CostOption Page");
		
		return "product/insert/cost_option";
	}
}
