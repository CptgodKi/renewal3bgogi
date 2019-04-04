package com.gogi.proj.orders.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileUpload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gogi.proj.excel.ReadOrderExcel;
import com.gogi.proj.orders.model.OrdersService;
import com.gogi.proj.orders.vo.OrdersVO;
import com.gogi.proj.util.FileuploadUtil;

@Controller
@RequestMapping(value="/orders")
public class OrdersController {

	private static final Logger logger = LoggerFactory.getLogger(OrdersController.class);
	
	@Autowired
	private FileuploadUtil fileUploadUtil;
	
	@Autowired
	private ReadOrderExcel readOrderExcel;
	
	@Autowired
	private OrdersService ordersService;
	
	/**
	 * @MethodName : insertOrdersPage
	 * @date : 2019. 3. 05.
	 * @author : Jeon KiChan
	 * @메소드설명 : 엑셀 형태의 주문서 혹은 제휴를 통한 json 형식의 데이터 입력을 받아오는 페이지
	 */
	@RequestMapping(value="/order_page.do", method=RequestMethod.GET)
	public String insertOrdersPageGet() {
		
		return "orders/insert_orders";
	}
	
	
	/**
	 * @MethodName : insertOrdersPagePost
	 * @date : 2019. 3. 11.
	 * @author : Jeon KiChan
	 * @메소드설명 : 엑셀 형태의 주문서 받아오기 (스마트스토어)
	 */
	@RequestMapping(value="/order_page.do", method=RequestMethod.POST)
	public String insertOrdersPagePost(HttpServletRequest request, Model model) {
		String msg = "";
		String url = "/orders/order_page.do";
		
		logger.info("smart_store excel data checking..");

		String fileName = "";
		
		try {
			
			fileName = fileUploadUtil.fileupload(request, FileuploadUtil.ORDER_EXCEL);
			
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			logger.info("upload error! checking fileExtension or excel file");
			logger.info(e.getMessage());
			msg = "파일 업로드 실패. 로그를 확인해주세요.";
			
			model.addAttribute("msg", msg);
			model.addAttribute("url",url);
		}
		
		logger.info("checking fileName = {}", fileName);
		
		List<OrdersVO> orderList= null;
		
		try {

			orderList = readOrderExcel.readOrderExcelDataToXLS(fileName);
			
		}catch(Exception e) {
			msg = "데이터 입력 오류.";
			
			model.addAttribute("msg", msg);
			model.addAttribute("url",url);
		}
		
		int [] result = ordersService.insertOrderData(orderList);

		logger.info("excel insert result = {} eachs duplication result = {}", result[0], result[1]);
		msg = "데이터 입력 완료. 입력 된 데이터 = "+result[0]+" 개 , 중복값 = "+result[1];
		
		model.addAttribute("msg", msg);
		model.addAttribute("url",url);
		
		return "common/message";
		
	}
	
}
