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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gogi.proj.classification.code.model.AllClassificationCodeService;
import com.gogi.proj.classification.code.vo.CostCodeVO;
import com.gogi.proj.paging.PaginationInfo;
import com.gogi.proj.product.cost.model.CostDetailService;
import com.gogi.proj.product.cost.vo.CostDetailVO;
import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.util.PageUtility;

@Controller
@RequestMapping("/products")
public class CostController {

	private static final Logger logger = LoggerFactory.getLogger(CostController.class);
	
	@Autowired
	private AllClassificationCodeService accService;
	
	@Autowired
	private CostDetailService costDetailService;
	
	
	/**
	 * @MethodName : insertCostDetailGet
	 * @date : 2019. 1. 23.
	 * @author : Jeon KiChan
	 * @메소드설명 : 데이터 관리/데이터입력/원가 상세사항 입력 페이지 들어가기
	 */
	@RequestMapping(value="/insert/cost_detail.do", method=RequestMethod.GET)
	public String insertCostDetailGet(@ModelAttribute PaginationInfo info, Model model) {
		
		logger.info("Insert CostDetail Page");
		
		info.setTotalRecord(costDetailService.selectCostDetailCount(info));
		info.setBlockSize(10);
		info.setRecordCountPerPage(PageUtility.RECORD_COUNT_PER_PAGE);
		
		logger.info("pagingvo result = {}", info.toString());
		logger.info("pagingvo result2 = {}", info.tests());
		
		// 원가 상세사항을 입력할 때 원가의 분류 코드 조회 후 뿌리기
		List<CostCodeVO> ccList = accService.selectCostCodeList();
		List<CostDetailVO> costDetailList = costDetailService.selectAllCostDetail(info);
		
		logger.info("costdetaillist result = {}", costDetailList.size());
		
		model.addAttribute("ccList", ccList);
		model.addAttribute("costDetailList", costDetailList);
		model.addAttribute("PaginationInfo", info);
		
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
	public String insertCostDetailPost(@ModelAttribute CostDetailVO costDetailVO, Model model) {
		
		String msg = "";
		String url = "/products/insert/cost_detail.do";
		
		int result = costDetailService.insertCostDetail(costDetailVO);
		
		if(result > 0) {
			msg = "원가 사항 입력 완료";
			
		}else {
			msg = "원가 사항 입력 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	/**
	 * @MethodName : insertCostsGet
	 * @date : 2019. 2. 18.
	 * @author : Jeon KiChan
	 * @메소드설명 : 원가가 넣는 페이지 불러오기
	 */
	@RequestMapping(value="/insert/costs.do",method=RequestMethod.GET)
	public String insertCostsGet() {
		
		logger.info("Insert CostOption Page");
		
		return "product/insert/costs";
	}
	
	@RequestMapping(value="/insert/costs.do", method=RequestMethod.POST)
	public String insertCostsPost(@ModelAttribute CostsVO costsVO) {
		
		logger.info("costsVO = {}", costsVO.toString());
		
		
		return "redirect:/products/insert/costs.do";
	}
	
	/**
	 * @MethodName : selectCostCodeList
	 * @date : 2019. 5. 20.
	 * @author : Jeon KiChan
	 * @메소드설명 : 원가 코드 분류 가져오기
	 */
	@RequestMapping(value="/cost_code_list.do", method=RequestMethod.GET)
	@ResponseBody
	public List<CostCodeVO> selectCostCodeList(){
		
		return accService.selectCostCodeList();
	}
	
	/**
	 * @MethodName : selectCostDetailListByCcpk
	 * @date : 2019. 5. 22.
	 * @author : Jeon KiChan
	 * @메소드설명 : 원가 분류 코드로 원가 세부사항을 검색해서 목록가져오기 : ajax 형태
	 */
	@RequestMapping(value="/cost_detail_list_by_ccpk.do", method=RequestMethod.GET)
	@ResponseBody
	public List<CostDetailVO> selectCostDetailListByCcpk(@RequestParam int ccPk){
		
		return costDetailService.selectCostDetailByCcpk(ccPk); 
	}
}
