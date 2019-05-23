package com.gogi.proj.admin.attendance.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gogi.proj.admin.attendance.vo.AdminAttendanceVO;
import com.gogi.proj.admin.attendance.vo.AdminDaysoffVO;
import com.gogi.proj.another.vo.DatesVO;
import com.gogi.proj.security.AdminServiceImpl;
import com.gogi.proj.security.AdminVO;

@Service
public class AttendanceServiceImpl implements AttendanceService{

	@Autowired
	private AttendanceDAO attendanceDAO;
	
	@Autowired
	private AdminServiceImpl adminService;
	
	private static final Logger logger = LoggerFactory.getLogger(AttendanceService.class);
	
	public List<AdminAttendanceVO> selectAdminAttendanceYearAndMonth(){
		
		return attendanceDAO.selectAdminAttendanceYearAndMonth();
	}
	
	public List<AdminAttendanceVO> selectAdminAttendanceByFkAndYearAndMonth(AdminAttendanceVO aaVO){
		
		return attendanceDAO.selectAdminAttendanceByFkAndYearAndMonth(aaVO);
	}
	
	public int insertAdminAttendanceStartWork(int adminPk) {
		
		return attendanceDAO.insertAdminAttendanceStartWork(adminPk);
	}
	
	public int updateAdminAttendanceEndWork(int aaPk) {
		
		return attendanceDAO.updateAdminAttendanceEndWork(aaPk);
	}
	
	public List<AdminAttendanceVO> selectAdminAttendanceList(int adminPk){
		
		return attendanceDAO.selectAdminAttendanceList(adminPk);
	}
	
	public AdminAttendanceVO selectAdminAttendance(int adminPk) {
		
		return attendanceDAO.selectAdminAttendance(adminPk);
	}

	@Override
	public List<AdminAttendanceVO> selectTotalAdminBreaks(int adminPk) {
		// TODO Auto-generated method stub
		
		List<AdminAttendanceVO> list = attendanceDAO.selectTotalAdminBreaks(adminPk);
		AdminVO adminVO = adminService.selectAdminInfoByAdminPk(adminPk);
		
		java.util.Date toDay = new java.util.Date();
		toDay.setHours(0);
		toDay.setMinutes(0);
		toDay.setSeconds(0);
		
		for(AdminAttendanceVO vo : list) {
			
			if(vo.getAaWorkStart() != null) {
				if(vo.getDcDate().getTime() < toDay.getTime()) {					
					if(vo.getAaWorkEnd() == null) {
						
						/*Date realDate = new Date(vo.getAaWorkStart().getTime());
						
						java.util.Date date = new java.util.Date(vo.getAaWorkStart().getTime());*/
						
						Timestamp ts = new Timestamp(vo.getAaWorkStart().getTime());
						
						Timestamp date = new Timestamp(vo.getAaWorkStart().getTime());
						
						if(adminVO.getAdminWorktime().equals("0830")) {
							date.setHours(17);
							date.setMinutes(30);
							
						}else if(adminVO.getAdminWorktime().equals("0900")) {
							date.setHours(18);
							date.setMinutes(0);
							
						}else if(adminVO.getAdminWorktime().equals("1400")) {
							date.setHours(18);
							date.setMinutes(0);
							
						}
						
						vo.setAaWorkEnd(new Timestamp(date.getTime()-ts.getTime() - (9*60*60*1000)));
						
					}
					
				}else {
					
				}
				
			}
			
		}
		
		return list;
	}

	@Override
	public List<AdminAttendanceVO> selectTodayAttendanceStatus() {
		// TODO Auto-generated method stub
		return attendanceDAO.selectTodayAttendanceStatus();
	}

	@Override
	public List<AdminDaysoffVO> selectAdmindaysoffByAdminFk(int adminPk) {
		// TODO Auto-generated method stub
		return attendanceDAO.selectAdmindaysoffByAdminFk(adminPk);
	}

	@Override
	public int insertAdmindaysoff(AdminDaysoffVO admindaysoffVO) {
		// TODO Auto-generated method stub
		int result = 0;
		
		if(admindaysoffVO.getAdType() == 1) {
		
			admindaysoffVO.setAdWeeks(-1);
			result = attendanceDAO.insertAdmindaysoff(admindaysoffVO);
			
		}else {
			
			admindaysoffVO.setAdStart(null);
			admindaysoffVO.setAdEnd(null);
			result = attendanceDAO.insertAdmindaysoff(admindaysoffVO);
			
		}
		
		return result;
	}

	@Override
	public int permissionDaysoffByAdPk(int adPk) {
		// TODO Auto-generated method stub
		return attendanceDAO.permissionDaysoffByAdPk(adPk);
	}

	@Override
	public int deleteAdmindaysoffByAdPk(int adPk) {
		// TODO Auto-generated method stub
		return attendanceDAO.deleteAdmindaysoffByAdPk(adPk);
	}

	@Override
	public List<DatesVO> selectAdminAttendanceYearLog(DatesVO datesVO) {
		// TODO Auto-generated method stub
		return attendanceDAO.selectAdminAttendanceYearLog(datesVO);
	}

	@Override
	public List<DatesVO> selectAdminAttendanceMonthLogByYear(DatesVO datesVO) {
		// TODO Auto-generated method stub
		return attendanceDAO.selectAdminAttendanceMonthLogByYear(datesVO);
	}

	@Override
	public List<AdminAttendanceVO> selectTotalAdminBreaksByDatesVO(DatesVO datesVO) {
		// TODO Auto-generated method stub
		
		List<AdminAttendanceVO> list =  attendanceDAO.selectTotalAdminBreaksByDatesVO(datesVO);
		AdminVO adminVO = adminService.selectAdminInfoByAdminPk(datesVO.getAdminPk());
		java.util.Date toDay = new java.util.Date();
		toDay.setHours(0);
		toDay.setMinutes(0);
		toDay.setSeconds(0);
		
		for(AdminAttendanceVO vo : list) {
			
			if(vo.getAaWorkStart() != null) {
				if(vo.getDcDate().getTime() < toDay.getTime()) {					
					if(vo.getAaWorkEnd() == null) {
						
						/*Date realDate = new Date(vo.getAaWorkStart().getTime());
						
						java.util.Date date = new java.util.Date(vo.getAaWorkStart().getTime());*/
						
						Timestamp ts = new Timestamp(vo.getAaWorkStart().getTime());
						
						Timestamp date = new Timestamp(vo.getAaWorkStart().getTime());
						
						if(adminVO.getAdminWorktime().equals("0830")) {
							date.setHours(17);
							date.setMinutes(30);
							
						}else if(adminVO.getAdminWorktime().equals("0900")) {
							date.setHours(18);
							date.setMinutes(0);
							
						}else if(adminVO.getAdminWorktime().equals("1400")) {
							date.setHours(18);
							date.setMinutes(0);
							
						}
						
						vo.setAaWorkEnd(new Timestamp(date.getTime()-ts.getTime() - (9*60*60*1000)));
						
					}
					
				}else {
					
				}
				
			}
			
		}
		
		return list;
	}
	
}
