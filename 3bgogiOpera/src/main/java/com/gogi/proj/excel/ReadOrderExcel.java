package com.gogi.proj.excel;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.POIXMLException;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.gogi.proj.orders.vo.OrdersVO;

@Component
public class ReadOrderExcel {
	
	public List<OrdersVO> readOrderExcelDataToXLS(String fileName) throws POIXMLException{
		
		List<OrdersVO> orderList = new ArrayList<>();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		try {

			FileInputStream fis= new FileInputStream("C:\\Users\\3bgogi\\Desktop\\server_file\\order_excel\\"+fileName);
			
			XSSFWorkbook workbook=new XSSFWorkbook(fis);
			
			int rowindex=0;
			
			int columnindex=0;

			XSSFSheet sheet=workbook.getSheetAt(0);

			int rows=sheet.getPhysicalNumberOfRows();
			
			for(rowindex=2;rowindex<rows;rowindex++){

			    XSSFRow row=sheet.getRow(rowindex);
			    
			    OrdersVO orderVO = new OrdersVO();
			    
			    if(row !=null){
			        
			        for(columnindex=0;columnindex<56;columnindex++){

			            XSSFCell cell=row.getCell(columnindex);
			            	//스마트스토어 기준
			            	//구매자명
			            	if(columnindex==0) {
			            		orderVO.setOrBuyerName(cell.getStringCellValue());
			            	//구매자ID		
			            	}else if(columnindex==1) {
			            		orderVO.setOrBuyerId(cell.getStringCellValue());
			            	//수취인명	
			            	}else if(columnindex==2) {
			            		orderVO.setOrReceiverName(cell.getStringCellValue());
			            	//상품명
			            	}else if(columnindex==3) {
			            		orderVO.setOrProduct(cell.getStringCellValue());
			            	//상품종류
			            	}else if(columnindex==4) {
			            		orderVO.setOrProductType(cell.getStringCellValue());
			            	//수량
			            	}else if(columnindex==5) {
			            		orderVO.setOrAmount((int)cell.getNumericCellValue());
			            	//옵션정보 : 옵션명
			            	}else if(columnindex==6) {
			            		orderVO.setOrProductOption(cell.getStringCellValue());
			            	//배송메세지
			            	}else if(columnindex==7) {
			            		orderVO.setOrDeliveryMessage(cell.getStringCellValue());
			            	//배송방법
			            	}else if(columnindex==8) {
			            		//orderVO.setOrDeliveryType(cell.getStringCellValue());
			            	//택배사
			            	}else if(columnindex==9) {
			            		//
			            	//송장번호
			            	}else if(columnindex==10) {
			            		
			            	//상품주문번호
			            	}else if(columnindex==11) {
			            		orderVO.setOrProductOrderNumber(cell.getStringCellValue());
			            	//주문번호
			            	}else if(columnindex==12) {
			            		orderVO.setOrOrderNumber(cell.getStringCellValue());
			            	//발송일 : 다운로드 받은 시간이 나옴 보류해야됌
			            	}else if(columnindex==13) {
			            		
			            	//주문상태 : 아직 필요한지 모름
			            	}else if(columnindex==14) {
			            		
			            	//주문세부상태 : 아직 필요한지 모름
			            	}else if(columnindex==15) {
			            		
			            	//결제위치 : PC or MOBILE
			            	}else if(columnindex==16) {
			            		orderVO.setOrPaymentPositionType(cell.getStringCellValue());
			            	//결제일
			            	}else if(columnindex==17) {
			            		orderVO.setOrSettlementDay(new Date(cell.getDateCellValue().getTime()));
			            	//상품번호 : 스마트스토어 내에서의 상품번호 ( 필요없을 것 같음 )
			            	}else if(columnindex==18) {
			            		orderVO.setOrProductNumber(cell.getStringCellValue());
			            	//옵션 가격
			            	}else if(columnindex==19) {
			            		orderVO.setOrProductOptionPrice((int)cell.getNumericCellValue());
			            	//상품 가격
			            	}else if(columnindex==20) {
			            		orderVO.setOrProductPrice((int)cell.getNumericCellValue());
			            	//상품별 할인액
			            	}else if(columnindex==21) {
			            		orderVO.setOrDiscountPrice((int)cell.getNumericCellValue());
			            	//판매자 부담 할인액
			            	}else if(columnindex==22) {
			            		//필요없을거 같음 상품별 할인액이 판매자 부담 할인액으로 되는 것으로 판단
			            	//상품별 총 주문금액
			            	}else if(columnindex==23) {
			            		orderVO.setOrTotalPrice((int)cell.getNumericCellValue());
			            	//발주확인일 : 공백임
			            	}else if(columnindex==24) {
			            		orderVO.setOrCheckDay(new Date(cell.getDateCellValue().getTime()));
			            	//발송기한 : 이걸로 예약자를 자동으로 걸러내거나 따로 예약을 잡을 수 있도록 함
			            	}else if(columnindex==25) {
			            		orderVO.setOrSendingDeadline(new Date(cell.getDateCellValue().getTime()));
			            	//발송처리일 : 현재 우리에게 필요없음
			            	}else if(columnindex==26) {
			            		
			            	//송장출력일 : 현재 우리에게 필요없음
			            	}else if(columnindex==27) {
			            		
			            	//배송비형태 : 선결제, 무료 등
			            	}else if(columnindex==28) {
			            		orderVO.setOrDeliveryChargeType(cell.getStringCellValue());
			            	//배송비묶음번호 자동으로 묶을 때 쓰면 될 것 같지만 너무 많아서 따로 분류해야 할 경우엔 필요없을 것 같음. 하지만 스마트스토어로 직접 연결할 경우 필요함으로 보임
			            	}else if(columnindex==29) {
			            		orderVO.setOrDeliveryNumber(cell.getStringCellValue());
			            	//배송비유형 : 전부 조건부무료
			            	}else if(columnindex==30) {
			            		
			            	//배송비 합계 3000원 아니면 0원 일듯
			            	}else if(columnindex==31) {
			            		orderVO.setOrDeliveryPrice((int)cell.getNumericCellValue());
			            	//제주/도서 추가배송비
			            	}else if(columnindex==32) {
			            		//두고봐야함
			            	//배송비 할인액 : 쿠폰으로 인해 할인할 경우 활성화 되는 것처럼 보임
			            	}else if(columnindex==33) {
			            		orderVO.setOrDeliveryDiscountPrice((int)cell.getNumericCellValue());
			            	//판매자 상품코드 : 현재 필요없어 보임
			            	}else if(columnindex==34) {
			            		
			            	//수취인 연락처 1
			            	}else if(columnindex==35) {
			            		orderVO.setOrReceiverContractNumber1(cell.getStringCellValue());
			            	//수취인 연락처 2
			            	}else if(columnindex==36) {
			            		orderVO.setOrReceiverContractNumber2(cell.getStringCellValue());
			            	//배송지
			            	}else if(columnindex==37) {
			            		orderVO.setOrShippingAddress(cell.getStringCellValue());
			            	//구매자연락처
			            	}else if(columnindex==38) {
			            		orderVO.setOrBuyerContractNumber1(cell.getStringCellValue());
			            	//우편번호
			            	}else if(columnindex==39) {
			            		orderVO.setOrShippingAddressNumber(cell.getStringCellValue());
			            	//출고지 : 우리회사로 입력됌
			            	}else if(columnindex==40) {
			            		orderVO.setOrSendingAddress(cell.getStringCellValue());
			            	//결제수단 신용카드, 무통장등으로 보임
			            	}else if(columnindex==41) {
			            		orderVO.setOrPaymentType(cell.getStringCellValue());
			            	//수수료 과금구분
			            	}else if(columnindex==42) {
			            		
			            	//수수료결제방식
			            	}else if(columnindex==43) {
			            		
			            	//결제수수료
			            	}else if(columnindex==44) {
			            		orderVO.setOrPaymentCommision((int)cell.getNumericCellValue());
			            	//네이버 쇼핑 매출연동 수수료
			            	}else if(columnindex==45) {
			            		orderVO.setOrAnotherPaymentCommision((int)cell.getNumericCellValue());
			            	//정산예정금액
			            	}else if(columnindex==46) {
			            		
			            	//유입경로
			            	}else if(columnindex==47) {
			            		orderVO.setOrInflowRoute(cell.getStringCellValue());
			            	//주문일시 : 결제일과 다름
			            	}else if(columnindex==48) {
			            		
			            	//구매자주민등록번호 : 현재 우리에게 필요없음
			            	}else if(columnindex==49) {
			            		
			            	//수취인연락처1 : 또 왜 있는지 모르겠음
			            	}else if(columnindex==50) {
			            		
			            	//수취인연락처2 : 이것도 또 왜 있는지 모르겠음
			            	}else if(columnindex==51) {
			            		
			            	//우편번호 이것도 왜 ..
			            	}else if(columnindex==52) {
			            		
			            	//기본주소 이것도 왜...
			            	}else if(columnindex==53) {
			            		
			            	//상세주소 ?...
			            	}else if(columnindex==54) {
			            		
			            	//구매자연락처
			            	}else if(columnindex==55) {
			            		
			            	
			            	}
			            
			        }//for
			    }
			    
			    orderList.add(orderVO);
			    
			}//for
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return orderList;
	}
	
	public List<OrdersVO> readOrderExcelDatatoXLSX(MultipartFile uploadFile){
		
		return null;
	}
	
}
