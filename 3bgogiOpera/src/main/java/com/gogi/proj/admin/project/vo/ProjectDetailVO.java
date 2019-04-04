package com.gogi.proj.admin.project.vo;

import java.sql.Timestamp;

public class ProjectDetailVO {

	private int pdPk; //업무 상세사항 고유 번호
	private int ptFk; //업무 대상자 고유 번호
	private String pdDetail; // 업무 완료 사항
	private String pdFile1; //첨부 파일1
	private String pdFile2;
	private String pdFile3;
	private String pdfile4; //첨부 파일4
	private boolean pdDisplayFlag; // 보이기 여부
	private boolean pdImportant;
	private int pdSorting; // 업무 정렬
	private Timestamp pdFinishTime; //업무 완료일
	
	public ProjectDetailVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectDetailVO(int pdPk, int ptFk, String pdDetail, String pdFile1, String pdFile2, String pdFile3,
			String pdfile4, boolean pdDisplayFlag, boolean pdImportant, int pdSorting, Timestamp pdFinishTime) {
		super();
		this.pdPk = pdPk;
		this.ptFk = ptFk;
		this.pdDetail = pdDetail;
		this.pdFile1 = pdFile1;
		this.pdFile2 = pdFile2;
		this.pdFile3 = pdFile3;
		this.pdfile4 = pdfile4;
		this.pdDisplayFlag = pdDisplayFlag;
		this.pdImportant = pdImportant;
		this.pdSorting = pdSorting;
		this.pdFinishTime = pdFinishTime;
	}

	public int getPdPk() {
		return pdPk;
	}

	public void setPdPk(int pdPk) {
		this.pdPk = pdPk;
	}

	public int getPtFk() {
		return ptFk;
	}

	public void setPtFk(int ptFk) {
		this.ptFk = ptFk;
	}

	public String getPdDetail() {
		return pdDetail;
	}

	public void setPdDetail(String pdDetail) {
		this.pdDetail = pdDetail;
	}

	public String getPdFile1() {
		return pdFile1;
	}

	public void setPdFile1(String pdFile1) {
		this.pdFile1 = pdFile1;
	}

	public String getPdFile2() {
		return pdFile2;
	}

	public void setPdFile2(String pdFile2) {
		this.pdFile2 = pdFile2;
	}

	public String getPdFile3() {
		return pdFile3;
	}

	public void setPdFile3(String pdFile3) {
		this.pdFile3 = pdFile3;
	}

	public String getPdfile4() {
		return pdfile4;
	}

	public void setPdfile4(String pdfile4) {
		this.pdfile4 = pdfile4;
	}

	public boolean isPdDisplayFlag() {
		return pdDisplayFlag;
	}

	public void setPdDisplayFlag(boolean pdDisplayFlag) {
		this.pdDisplayFlag = pdDisplayFlag;
	}

	public boolean isPdImportant() {
		return pdImportant;
	}

	public void setPdImportant(boolean pdImportant) {
		this.pdImportant = pdImportant;
	}

	public int getPdSorting() {
		return pdSorting;
	}

	public void setPdSorting(int pdSorting) {
		this.pdSorting = pdSorting;
	}

	public Timestamp getPdFinishTime() {
		return pdFinishTime;
	}

	public void setPdFinishTime(Timestamp pdFinishTime) {
		this.pdFinishTime = pdFinishTime;
	}

	@Override
	public String toString() {
		return "ProjectDetailVO [pdPk=" + pdPk + ", ptFk=" + ptFk + ", pdDetail=" + pdDetail + ", pdFile1=" + pdFile1
				+ ", pdFile2=" + pdFile2 + ", pdFile3=" + pdFile3 + ", pdfile4=" + pdfile4 + ", pdDisplayFlag="
				+ pdDisplayFlag + ", pdImportant=" + pdImportant + ", pdSorting=" + pdSorting + ", pdFinishTime="
				+ pdFinishTime + "]";
	}

}
