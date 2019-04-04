package com.gogi.proj.admin.project.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class ProjectTargetVO {

	private int ptPk; //업무 대상자 고유 번호
	private int proFk; //업무 고유 번호
	private int adminFk; // 관리자 고유 번호
	private boolean ptDisplayFlag; // 업무 검수자 여부
	private boolean ptCrateFlag; // 업무 만든이 여부
	private Date ptAlarmCheckDate; // 알람 체크일
	private Timestamp ptRegdate; // 업무대상자 등록일 db상으로는 DATETIME으로 구성.
	
	public ProjectTargetVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectTargetVO(int ptPk, int proFk, int adminFk, boolean ptDisplayFlag, boolean ptCrateFlag,
			Date ptAlarmCheckDate, Timestamp ptRegdate) {
		super();
		this.ptPk = ptPk;
		this.proFk = proFk;
		this.adminFk = adminFk;
		this.ptDisplayFlag = ptDisplayFlag;
		this.ptCrateFlag = ptCrateFlag;
		this.ptAlarmCheckDate = ptAlarmCheckDate;
		this.ptRegdate = ptRegdate;
	}

	public int getPtPk() {
		return ptPk;
	}

	public void setPtPk(int ptPk) {
		this.ptPk = ptPk;
	}

	public int getProFk() {
		return proFk;
	}

	public void setProFk(int proFk) {
		this.proFk = proFk;
	}

	public int getAdminFk() {
		return adminFk;
	}

	public void setAdminFk(int adminFk) {
		this.adminFk = adminFk;
	}

	public boolean isPtDisplayFlag() {
		return ptDisplayFlag;
	}

	public void setPtDisplayFlag(boolean ptDisplayFlag) {
		this.ptDisplayFlag = ptDisplayFlag;
	}

	public boolean isPtCrateFlag() {
		return ptCrateFlag;
	}

	public void setPtCrateFlag(boolean ptCrateFlag) {
		this.ptCrateFlag = ptCrateFlag;
	}

	public Date getPtAlarmCheckDate() {
		return ptAlarmCheckDate;
	}

	public void setPtAlarmCheckDate(Date ptAlarmCheckDate) {
		this.ptAlarmCheckDate = ptAlarmCheckDate;
	}

	public Timestamp getPtRegdate() {
		return ptRegdate;
	}

	public void setPtRegdate(Timestamp ptRegdate) {
		this.ptRegdate = ptRegdate;
	}

	@Override
	public String toString() {
		return "ProjectTargetVO [ptPk=" + ptPk + ", proFk=" + proFk + ", adminFk=" + adminFk + ", ptDisplayFlag="
				+ ptDisplayFlag + ", ptCrateFlag=" + ptCrateFlag + ", ptAlarmCheckDate=" + ptAlarmCheckDate
				+ ", ptRegdate=" + ptRegdate + "]";
	}

}
