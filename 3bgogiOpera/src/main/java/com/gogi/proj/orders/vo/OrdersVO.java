package com.gogi.proj.orders.vo;

import java.sql.Date;

public class OrdersVO {
	
	private int orPk; //주문서 고유번호
	private int pmFk; //매칭 고유 번호
	private String orSerialSpecialNumber; //주문서 고유 특수번호
	private String orBuyerId; // 구매자 아이디
	private String orBuyerName; //구매자명
	private String orBuyerAnotherName; //구매자명 치환
	private String orBuyerContractNumber1; //구매자 연락처 1
	private String orBuyerContractNumber2; //구매자 연락처 2
	private String orReceiverName; //수취인명
	private String orProduct; //상품명
	private String orProductType; //상품종류
	private String orProductOption; //상품의 옵션명
	private int orAmount; // 수량
	private String orDeliveryMessage; //배송메세지
	private String orDeliveryType; //배송방법 예) 방문수령, 택배 등
	private String orDeliveryCompany; // 택배사
	private String orOrderNumber; //주문번호 -> 한번에 샀을 경우 묶을 수 있게 하는 묶음번호 역할
	private String orProductOrderNumber; //상품주문번호 -> 주문번호 중 산 상품의 고유 주문번호를 알 수 있게 하는 역할
	private String orProductNumber; //상품고유번호
	private String orPaymentPositionType; //결제위치
	private Date orSettlementDay; //결제일
	private int orProductPrice;  //상품가격
	private int orProductOptionPrice; //옵션가격
	private int orDiscountPrice; //상품할인가
	private int orTotalPrice; //총 주문가격
	private int orTotalCost; // 총 원가 -> 이 부분은 상품 매칭하면서 직접 계산하여 전달 1원 단위 자르기
	private Date orCheckDay; //발주확인일
	private Date orSendingDeadline; //발송기한
	private Date orSendingDay; //발송일
	private String orDeliveryChargeType; //배송비형태 -> 선불, 후불, 무료
	private String orDeliveryNumber; //배송묶음번호 -> 송장으로 대체될 것 같음
	private int orDeliveryPrice; //배송비
	private int orDeliveryDiscountPrice; //배송할인액 -> 기본 배송비가 3000원일 경우에 배송쿠폰이 2500원이면 2500원 할인하여 500원 남음
	private String orReceiverContractNumber1; //수취인 연락처1
	private String orReceiverContractNumber2; //수취인 연락처2
	private String orShippingAddressNumber; //우편번호
	private String orShippingProvince; //배송지 도 예) 경기도, 강원도, 인천시 등 큰 지역
	private String orShippingAddress; //배송지
	private String orShippingAddressDetail; //배송지 상세사항
	private boolean orSpecialRegionDetail;
	private String orSendingAddress; //출고지 -> 현 상황에선 삼형제고기로 고정
	private String orPaymentType; //결제수단
	private int orPaymentCommision; //결제수수료
	private int orAnotherPaymentCommision; //또 다른 결제수수료
	private String orInflowRoute; //유입경로
	private String orRequest; //특별요청사항
	private boolean orTaxFlag; // 면세, 과제 여부
	private Date orRegdate; //현 주문서 등록일
	
	public OrdersVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrdersVO(int orPk, int pmFk, String orSerialSpecialNumber, String orBuyerId, String orBuyerName,
			String orBuyerAnotherName, String orBuyerContractNumber1, String orBuyerContractNumber2,
			String orReceiverName, String orProduct, String orProductType, String orProductOption, int orAmount,
			String orDeliveryMessage, String orDeliveryType, String orDeliveryCompany, String orOrderNumber,
			String orProductOrderNumber, String orProductNumber, String orPaymentPositionType, Date orSettlementDay,
			int orProductPrice, int orProductOptionPrice, int orDiscountPrice, int orTotalPrice, int orTotalCost,
			Date orCheckDay, Date orSendingDeadline, Date orSendingDay, String orDeliveryChargeType,
			String orDeliveryNumber, int orDeliveryPrice, int orDeliveryDiscountPrice, String orReceiverContractNumber1,
			String orReceiverContractNumber2, String orShippingAddressNumber, String orShippingProvince,
			String orShippingAddress, String orShippingAddressDetail, boolean orSpecialRegionDetail,
			String orSendingAddress, String orPaymentType, int orPaymentCommision, int orAnotherPaymentCommision,
			String orInflowRoute, String orRequest, boolean orTaxFlag, Date orRegdate) {
		super();
		this.orPk = orPk;
		this.pmFk = pmFk;
		this.orSerialSpecialNumber = orSerialSpecialNumber;
		this.orBuyerId = orBuyerId;
		this.orBuyerName = orBuyerName;
		this.orBuyerAnotherName = orBuyerAnotherName;
		this.orBuyerContractNumber1 = orBuyerContractNumber1;
		this.orBuyerContractNumber2 = orBuyerContractNumber2;
		this.orReceiverName = orReceiverName;
		this.orProduct = orProduct;
		this.orProductType = orProductType;
		this.orProductOption = orProductOption;
		this.orAmount = orAmount;
		this.orDeliveryMessage = orDeliveryMessage;
		this.orDeliveryType = orDeliveryType;
		this.orDeliveryCompany = orDeliveryCompany;
		this.orOrderNumber = orOrderNumber;
		this.orProductOrderNumber = orProductOrderNumber;
		this.orProductNumber = orProductNumber;
		this.orPaymentPositionType = orPaymentPositionType;
		this.orSettlementDay = orSettlementDay;
		this.orProductPrice = orProductPrice;
		this.orProductOptionPrice = orProductOptionPrice;
		this.orDiscountPrice = orDiscountPrice;
		this.orTotalPrice = orTotalPrice;
		this.orTotalCost = orTotalCost;
		this.orCheckDay = orCheckDay;
		this.orSendingDeadline = orSendingDeadline;
		this.orSendingDay = orSendingDay;
		this.orDeliveryChargeType = orDeliveryChargeType;
		this.orDeliveryNumber = orDeliveryNumber;
		this.orDeliveryPrice = orDeliveryPrice;
		this.orDeliveryDiscountPrice = orDeliveryDiscountPrice;
		this.orReceiverContractNumber1 = orReceiverContractNumber1;
		this.orReceiverContractNumber2 = orReceiverContractNumber2;
		this.orShippingAddressNumber = orShippingAddressNumber;
		this.orShippingProvince = orShippingProvince;
		this.orShippingAddress = orShippingAddress;
		this.orShippingAddressDetail = orShippingAddressDetail;
		this.orSpecialRegionDetail = orSpecialRegionDetail;
		this.orSendingAddress = orSendingAddress;
		this.orPaymentType = orPaymentType;
		this.orPaymentCommision = orPaymentCommision;
		this.orAnotherPaymentCommision = orAnotherPaymentCommision;
		this.orInflowRoute = orInflowRoute;
		this.orRequest = orRequest;
		this.orTaxFlag = orTaxFlag;
		this.orRegdate = orRegdate;
	}

	public int getOrPk() {
		return orPk;
	}

	public void setOrPk(int orPk) {
		this.orPk = orPk;
	}

	public int getPmFk() {
		return pmFk;
	}

	public void setPmFk(int pmFk) {
		this.pmFk = pmFk;
	}

	public String getOrSerialSpecialNumber() {
		return orSerialSpecialNumber;
	}

	public void setOrSerialSpecialNumber(String orSerialSpecialNumber) {
		this.orSerialSpecialNumber = orSerialSpecialNumber;
	}

	public String getOrBuyerId() {
		return orBuyerId;
	}

	public void setOrBuyerId(String orBuyerId) {
		this.orBuyerId = orBuyerId;
	}

	public String getOrBuyerName() {
		return orBuyerName;
	}

	public void setOrBuyerName(String orBuyerName) {
		this.orBuyerName = orBuyerName;
	}

	public String getOrBuyerAnotherName() {
		return orBuyerAnotherName;
	}

	public void setOrBuyerAnotherName(String orBuyerAnotherName) {
		this.orBuyerAnotherName = orBuyerAnotherName;
	}

	public String getOrBuyerContractNumber1() {
		return orBuyerContractNumber1;
	}

	public void setOrBuyerContractNumber1(String orBuyerContractNumber1) {
		this.orBuyerContractNumber1 = orBuyerContractNumber1;
	}

	public String getOrBuyerContractNumber2() {
		return orBuyerContractNumber2;
	}

	public void setOrBuyerContractNumber2(String orBuyerContractNumber2) {
		this.orBuyerContractNumber2 = orBuyerContractNumber2;
	}

	public String getOrReceiverName() {
		return orReceiverName;
	}

	public void setOrReceiverName(String orReceiverName) {
		this.orReceiverName = orReceiverName;
	}

	public String getOrProduct() {
		return orProduct;
	}

	public void setOrProduct(String orProduct) {
		this.orProduct = orProduct;
	}

	public String getOrProductType() {
		return orProductType;
	}

	public void setOrProductType(String orProductType) {
		this.orProductType = orProductType;
	}

	public String getOrProductOption() {
		return orProductOption;
	}

	public void setOrProductOption(String orProductOption) {
		this.orProductOption = orProductOption;
	}

	public int getOrAmount() {
		return orAmount;
	}

	public void setOrAmount(int orAmount) {
		this.orAmount = orAmount;
	}

	public String getOrDeliveryMessage() {
		return orDeliveryMessage;
	}

	public void setOrDeliveryMessage(String orDeliveryMessage) {
		this.orDeliveryMessage = orDeliveryMessage;
	}

	public String getOrDeliveryType() {
		return orDeliveryType;
	}

	public void setOrDeliveryType(String orDeliveryType) {
		this.orDeliveryType = orDeliveryType;
	}

	public String getOrDeliveryCompany() {
		return orDeliveryCompany;
	}

	public void setOrDeliveryCompany(String orDeliveryCompany) {
		this.orDeliveryCompany = orDeliveryCompany;
	}

	public String getOrOrderNumber() {
		return orOrderNumber;
	}

	public void setOrOrderNumber(String orOrderNumber) {
		this.orOrderNumber = orOrderNumber;
	}

	public String getOrProductOrderNumber() {
		return orProductOrderNumber;
	}

	public void setOrProductOrderNumber(String orProductOrderNumber) {
		this.orProductOrderNumber = orProductOrderNumber;
	}

	public String getOrProductNumber() {
		return orProductNumber;
	}

	public void setOrProductNumber(String orProductNumber) {
		this.orProductNumber = orProductNumber;
	}

	public String getOrPaymentPositionType() {
		return orPaymentPositionType;
	}

	public void setOrPaymentPositionType(String orPaymentPositionType) {
		this.orPaymentPositionType = orPaymentPositionType;
	}

	public Date getOrSettlementDay() {
		return orSettlementDay;
	}

	public void setOrSettlementDay(Date orSettlementDay) {
		this.orSettlementDay = orSettlementDay;
	}

	public int getOrProductPrice() {
		return orProductPrice;
	}

	public void setOrProductPrice(int orProductPrice) {
		this.orProductPrice = orProductPrice;
	}

	public int getOrProductOptionPrice() {
		return orProductOptionPrice;
	}

	public void setOrProductOptionPrice(int orProductOptionPrice) {
		this.orProductOptionPrice = orProductOptionPrice;
	}

	public int getOrDiscountPrice() {
		return orDiscountPrice;
	}

	public void setOrDiscountPrice(int orDiscountPrice) {
		this.orDiscountPrice = orDiscountPrice;
	}

	public int getOrTotalPrice() {
		return orTotalPrice;
	}

	public void setOrTotalPrice(int orTotalPrice) {
		this.orTotalPrice = orTotalPrice;
	}

	public int getOrTotalCost() {
		return orTotalCost;
	}

	public void setOrTotalCost(int orTotalCost) {
		this.orTotalCost = orTotalCost;
	}

	public Date getOrCheckDay() {
		return orCheckDay;
	}

	public void setOrCheckDay(Date orCheckDay) {
		this.orCheckDay = orCheckDay;
	}

	public Date getOrSendingDeadline() {
		return orSendingDeadline;
	}

	public void setOrSendingDeadline(Date orSendingDeadline) {
		this.orSendingDeadline = orSendingDeadline;
	}

	public Date getOrSendingDay() {
		return orSendingDay;
	}

	public void setOrSendingDay(Date orSendingDay) {
		this.orSendingDay = orSendingDay;
	}

	public String getOrDeliveryChargeType() {
		return orDeliveryChargeType;
	}

	public void setOrDeliveryChargeType(String orDeliveryChargeType) {
		this.orDeliveryChargeType = orDeliveryChargeType;
	}

	public String getOrDeliveryNumber() {
		return orDeliveryNumber;
	}

	public void setOrDeliveryNumber(String orDeliveryNumber) {
		this.orDeliveryNumber = orDeliveryNumber;
	}

	public int getOrDeliveryPrice() {
		return orDeliveryPrice;
	}

	public void setOrDeliveryPrice(int orDeliveryPrice) {
		this.orDeliveryPrice = orDeliveryPrice;
	}

	public int getOrDeliveryDiscountPrice() {
		return orDeliveryDiscountPrice;
	}

	public void setOrDeliveryDiscountPrice(int orDeliveryDiscountPrice) {
		this.orDeliveryDiscountPrice = orDeliveryDiscountPrice;
	}

	public String getOrReceiverContractNumber1() {
		return orReceiverContractNumber1;
	}

	public void setOrReceiverContractNumber1(String orReceiverContractNumber1) {
		this.orReceiverContractNumber1 = orReceiverContractNumber1;
	}

	public String getOrReceiverContractNumber2() {
		return orReceiverContractNumber2;
	}

	public void setOrReceiverContractNumber2(String orReceiverContractNumber2) {
		this.orReceiverContractNumber2 = orReceiverContractNumber2;
	}

	public String getOrShippingAddressNumber() {
		return orShippingAddressNumber;
	}

	public void setOrShippingAddressNumber(String orShippingAddressNumber) {
		this.orShippingAddressNumber = orShippingAddressNumber;
	}

	public String getOrShippingProvince() {
		return orShippingProvince;
	}

	public void setOrShippingProvince(String orShippingProvince) {
		this.orShippingProvince = orShippingProvince;
	}

	public String getOrShippingAddress() {
		return orShippingAddress;
	}

	public void setOrShippingAddress(String orShippingAddress) {
		this.orShippingAddress = orShippingAddress;
	}

	public String getOrShippingAddressDetail() {
		return orShippingAddressDetail;
	}

	public void setOrShippingAddressDetail(String orShippingAddressDetail) {
		this.orShippingAddressDetail = orShippingAddressDetail;
	}

	public boolean isOrSpecialRegionDetail() {
		return orSpecialRegionDetail;
	}

	public void setOrSpecialRegionDetail(boolean orSpecialRegionDetail) {
		this.orSpecialRegionDetail = orSpecialRegionDetail;
	}

	public String getOrSendingAddress() {
		return orSendingAddress;
	}

	public void setOrSendingAddress(String orSendingAddress) {
		this.orSendingAddress = orSendingAddress;
	}

	public String getOrPaymentType() {
		return orPaymentType;
	}

	public void setOrPaymentType(String orPaymentType) {
		this.orPaymentType = orPaymentType;
	}

	public int getOrPaymentCommision() {
		return orPaymentCommision;
	}

	public void setOrPaymentCommision(int orPaymentCommision) {
		this.orPaymentCommision = orPaymentCommision;
	}

	public int getOrAnotherPaymentCommision() {
		return orAnotherPaymentCommision;
	}

	public void setOrAnotherPaymentCommision(int orAnotherPaymentCommision) {
		this.orAnotherPaymentCommision = orAnotherPaymentCommision;
	}

	public String getOrInflowRoute() {
		return orInflowRoute;
	}

	public void setOrInflowRoute(String orInflowRoute) {
		this.orInflowRoute = orInflowRoute;
	}

	public String getOrRequest() {
		return orRequest;
	}

	public void setOrRequest(String orRequest) {
		this.orRequest = orRequest;
	}

	public boolean isOrTaxFlag() {
		return orTaxFlag;
	}

	public void setOrTaxFlag(boolean orTaxFlag) {
		this.orTaxFlag = orTaxFlag;
	}

	public Date getOrRegdate() {
		return orRegdate;
	}

	public void setOrRegdate(Date orRegdate) {
		this.orRegdate = orRegdate;
	}

	@Override
	public String toString() {
		return "OrdersVO [orPk=" + orPk + ", pmFk=" + pmFk + ", orSerialSpecialNumber=" + orSerialSpecialNumber
				+ ", orBuyerId=" + orBuyerId + ", orBuyerName=" + orBuyerName + ", orBuyerAnotherName="
				+ orBuyerAnotherName + ", orBuyerContractNumber1=" + orBuyerContractNumber1
				+ ", orBuyerContractNumber2=" + orBuyerContractNumber2 + ", orReceiverName=" + orReceiverName
				+ ", orProduct=" + orProduct + ", orProductType=" + orProductType + ", orProductOption="
				+ orProductOption + ", orAmount=" + orAmount + ", orDeliveryMessage=" + orDeliveryMessage
				+ ", orDeliveryType=" + orDeliveryType + ", orDeliveryCompany=" + orDeliveryCompany + ", orOrderNumber="
				+ orOrderNumber + ", orProductOrderNumber=" + orProductOrderNumber + ", orProductNumber="
				+ orProductNumber + ", orPaymentPositionType=" + orPaymentPositionType + ", orSettlementDay="
				+ orSettlementDay + ", orProductPrice=" + orProductPrice + ", orProductOptionPrice="
				+ orProductOptionPrice + ", orDiscountPrice=" + orDiscountPrice + ", orTotalPrice=" + orTotalPrice
				+ ", orTotalCost=" + orTotalCost + ", orCheckDay=" + orCheckDay + ", orSendingDeadline="
				+ orSendingDeadline + ", orSendingDay=" + orSendingDay + ", orDeliveryChargeType="
				+ orDeliveryChargeType + ", orDeliveryNumber=" + orDeliveryNumber + ", orDeliveryPrice="
				+ orDeliveryPrice + ", orDeliveryDiscountPrice=" + orDeliveryDiscountPrice
				+ ", orReceiverContractNumber1=" + orReceiverContractNumber1 + ", orReceiverContractNumber2="
				+ orReceiverContractNumber2 + ", orShippingAddressNumber=" + orShippingAddressNumber
				+ ", orShippingProvince=" + orShippingProvince + ", orShippingAddress=" + orShippingAddress
				+ ", orShippingAddressDetail=" + orShippingAddressDetail + ", orSpecialRegionDetail="
				+ orSpecialRegionDetail + ", orSendingAddress=" + orSendingAddress + ", orPaymentType=" + orPaymentType
				+ ", orPaymentCommision=" + orPaymentCommision + ", orAnotherPaymentCommision="
				+ orAnotherPaymentCommision + ", orInflowRoute=" + orInflowRoute + ", orRequest=" + orRequest
				+ ", orTaxFlag=" + orTaxFlag + ", orRegdate=" + orRegdate + "]";
	}

}

