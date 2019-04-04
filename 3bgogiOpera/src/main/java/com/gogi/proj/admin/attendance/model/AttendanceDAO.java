package com.gogi.proj.admin.attendance.model;

import java.util.List;

import com.gogi.proj.admin.attendance.vo.AdminAttendanceVO;
import com.gogi.proj.admin.attendance.vo.AdminDaysoffVO;
import com.gogi.proj.another.vo.DatesVO;

public interface AttendanceDAO {

	public List<AdminAttendanceVO> selectAdminAttendanceYearAndMonth();
	
	public List<AdminAttendanceVO> selectAdminAttendanceByFkAndYearAndMonth(AdminAttendanceVO aaVO);
	
	public List<AdminAttendanceVO> selectAdminAttendanceList(int adminPk);
	
	public int insertAdminAttendanceStartWork(int adminPk);
	
	public int updateAdminAttendanceEndWork(int aaPk);
	
	public AdminAttendanceVO selectAdminAttendance(int adminPk);
	
	public List<AdminAttendanceVO>  selectTotalAdminBreaks(int adminPk);
	
	public List<AdminAttendanceVO> selectTodayAttendanceStatus();
	
	
	
	//daysoff
	public List<AdminDaysoffVO> selectAdmindaysoffByAdminFk(int adminPk);
	
	public int insertAdmindaysoff(AdminDaysoffVO admindaysoffVO);
	
	public int permissionDaysoffByAdPk(int adPk);
	
	public int deleteAdmindaysoffByAdPk(int adPk);
	
	//select attendance year, month log
	public List<DatesVO> selectAdminAttendanceYearLog(DatesVO datesVO);
	public List<DatesVO> selectAdminAttendanceMonthLogByYear(DatesVO datesVO);
	public List<AdminAttendanceVO> selectTotalAdminBreaksByDatesVO(DatesVO datesVO);
	
}
