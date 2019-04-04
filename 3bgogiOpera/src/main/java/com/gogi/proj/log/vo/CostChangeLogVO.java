package com.gogi.proj.log.vo;

import java.sql.Timestamp;

public class CostChangeLogVO {
	
	private int cclPk; //원가변동 고유번호
	private int cdFk; // 원가 세부사항 고유 번호
	private String cclAdmin;
	private String cclName; //원가명
	private int cclPrice; //원가
	private String cclOlderName; //전 원가명
	private int cclOlderPrice; //전 원가
	private Timestamp cclChangeDate; // 변동일
	
	public CostChangeLogVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CostChangeLogVO(int cclPk, int cdFk, String cclAdmin, String cclName, int cclPrice, String cclOlderName,
			int cclOlderPrice, Timestamp cclChangeDate) {
		super();
		this.cclPk = cclPk;
		this.cdFk = cdFk;
		this.cclAdmin = cclAdmin;
		this.cclName = cclName;
		this.cclPrice = cclPrice;
		this.cclOlderName = cclOlderName;
		this.cclOlderPrice = cclOlderPrice;
		this.cclChangeDate = cclChangeDate;
	}

	public int getCclPk() {
		return cclPk;
	}

	public void setCclPk(int cclPk) {
		this.cclPk = cclPk;
	}

	public int getCdFk() {
		return cdFk;
	}

	public void setCdFk(int cdFk) {
		this.cdFk = cdFk;
	}

	public String getCclAdmin() {
		return cclAdmin;
	}

	public void setCclAdmin(String cclAdmin) {
		this.cclAdmin = cclAdmin;
	}

	public String getCclName() {
		return cclName;
	}

	public void setCclName(String cclName) {
		this.cclName = cclName;
	}

	public int getCclPrice() {
		return cclPrice;
	}

	public void setCclPrice(int cclPrice) {
		this.cclPrice = cclPrice;
	}

	public String getCclOlderName() {
		return cclOlderName;
	}

	public void setCclOlderName(String cclOlderName) {
		this.cclOlderName = cclOlderName;
	}

	public int getCclOlderPrice() {
		return cclOlderPrice;
	}

	public void setCclOlderPrice(int cclOlderPrice) {
		this.cclOlderPrice = cclOlderPrice;
	}

	public Timestamp getCclChangeDate() {
		return cclChangeDate;
	}

	public void setCclChangeDate(Timestamp cclChangeDate) {
		this.cclChangeDate = cclChangeDate;
	}

	@Override
	public String toString() {
		return "CostChangeLogVO [cclPk=" + cclPk + ", cdFk=" + cdFk + ", cclAdmin=" + cclAdmin + ", cclName=" + cclName
				+ ", cclPrice=" + cclPrice + ", cclOlderName=" + cclOlderName + ", cclOlderPrice=" + cclOlderPrice
				+ ", cclChangeDate=" + cclChangeDate + "]";
	}
	
}
