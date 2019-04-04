package com.gogi.proj.admin.project.vo;

import java.sql.Timestamp;

public class ProjectCommentVO {

	private int pcPk;
	private int proFk;
	private int adminFk;
	private int pdFk;
	private String pcDetail;
	private Timestamp pcUpdate;
	private Timestamp pcRegdate;
	
	public ProjectCommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectCommentVO(int pcPk, int proFk, int adminFk, int pdFk, String pcDetail, Timestamp pcUpdate,
			Timestamp pcRegdate) {
		super();
		this.pcPk = pcPk;
		this.proFk = proFk;
		this.adminFk = adminFk;
		this.pdFk = pdFk;
		this.pcDetail = pcDetail;
		this.pcUpdate = pcUpdate;
		this.pcRegdate = pcRegdate;
	}

	public int getPcPk() {
		return pcPk;
	}

	public void setPcPk(int pcPk) {
		this.pcPk = pcPk;
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

	public int getPdFk() {
		return pdFk;
	}

	public void setPdFk(int pdFk) {
		this.pdFk = pdFk;
	}

	public String getPcDetail() {
		return pcDetail;
	}

	public void setPcDetail(String pcDetail) {
		this.pcDetail = pcDetail;
	}

	public Timestamp getPcUpdate() {
		return pcUpdate;
	}

	public void setPcUpdate(Timestamp pcUpdate) {
		this.pcUpdate = pcUpdate;
	}

	public Timestamp getPcRegdate() {
		return pcRegdate;
	}

	public void setPcRegdate(Timestamp pcRegdate) {
		this.pcRegdate = pcRegdate;
	}

	@Override
	public String toString() {
		return "ProjectCommentVO [pcPk=" + pcPk + ", proFk=" + proFk + ", adminFk=" + adminFk + ", pdFk=" + pdFk
				+ ", pcDetail=" + pcDetail + ", pcUpdate=" + pcUpdate + ", pcRegdate=" + pcRegdate + "]";
	}

}
