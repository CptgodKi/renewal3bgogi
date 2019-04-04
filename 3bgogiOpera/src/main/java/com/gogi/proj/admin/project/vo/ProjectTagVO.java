package com.gogi.proj.admin.project.vo;

public class ProjectTagVO {

	private int ptPk; //태그 고유 번호
	private int proFk; //업무 고유 번호
	private int adminFk; //관리자 고유 번호
	private String ptTitle; //태그명
	
	public ProjectTagVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectTagVO(int ptPk, int proFk, int adminFk, String ptTitle) {
		super();
		this.ptPk = ptPk;
		this.proFk = proFk;
		this.adminFk = adminFk;
		this.ptTitle = ptTitle;
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

	public String getPtTitle() {
		return ptTitle;
	}

	public void setPtTitle(String ptTitle) {
		this.ptTitle = ptTitle;
	}

	@Override
	public String toString() {
		return "ProjectTagVO [ptPk=" + ptPk + ", proFk=" + proFk + ", adminFk=" + adminFk + ", ptTitle=" + ptTitle
				+ "]";
	}
	
}
