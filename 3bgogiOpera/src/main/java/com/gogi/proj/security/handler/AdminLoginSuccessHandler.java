package com.gogi.proj.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

@Component
public class AdminLoginSuccessHandler implements AuthenticationSuccessHandler {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminLoginSuccessHandler.class);
	
	private RequestCache requestCache = new HttpSessionRequestCache();
	
	private String targetUrlParameter;
	
	private String defaultUrl;
	
	private boolean useReferer;
	
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	public AdminLoginSuccessHandler() {
		
		targetUrlParameter = "";
		
		defaultUrl = "/admin/attendance/admin_attendance_status.do";
		
		useReferer = false;
		
	}
	
	
	
	public RequestCache getRequestCache() {
		return requestCache;
	}



	public void setRequestCache(RequestCache requestCache) {
		this.requestCache = requestCache;
	}



	public String getTargetUrlParameter() {
		return targetUrlParameter;
	}



	public void setTargetUrlParameter(String targetUrlParameter) {
		this.targetUrlParameter = targetUrlParameter;
	}



	public String getDefaultUrl() {
		return defaultUrl;
	}



	public void setDefaultUrl(String defaultUrl) {
		this.defaultUrl = defaultUrl;
	}



	public boolean isUseReferer() {
		return useReferer;
	}



	public void setUseReferer(boolean useReferer) {
		this.useReferer = useReferer;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res,
			Authentication auth) throws IOException, ServletException {
		// TODO Auto-generated method stub
		logger.info("Login Success !");
		logger.info("Login ID [ {} ].",auth.getName());
		
		for(GrantedAuthority a : auth.getAuthorities()) {
			logger.info("authority = [ {} ].",a.getAuthority());
		}
		
		logger.info(auth.getDetails().toString());
		logger.info(auth.getPrincipal().toString());
		
		UserDetails u = (UserDetails)auth.getPrincipal();
		
		logger.info(String.valueOf(u.isAccountNonExpired()));
		
		logger.info("sending URL..");
		
		clearAuthenticationAttributes(req);
		
		int intRedirectStrategy = decideRedirectStrategy(req, res);
		
		switch(intRedirectStrategy) {
		
		case 1:
			useTargetUrl(req, res);
			break;
			
		case 2:
			useSessionUrl(req, res);
			break;
			
		case 3:
			useRefererUrl(req, res);
			break;
			
		default:
			useDefaultUrl(req, res);
			
		}
		
	}
	
	private void clearAuthenticationAttributes(HttpServletRequest req) {
		
		HttpSession session = req.getSession(false);
		
		if(session == null) {
			
			return;
			
		}
		
		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
		
	}
	
	private void useTargetUrl(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		SavedRequest savedRequest = requestCache.getRequest(req, res);
		
		if(savedRequest != null) {
			
			requestCache.removeRequest(req, res);
			
		}
		
		String targetUrl = req.getParameter(targetUrlParameter);
		
		redirectStrategy.sendRedirect(req, res, targetUrl);
		
	}
	
	private void useSessionUrl(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		SavedRequest savedRequest = requestCache.getRequest(req, res);
		
		String targetUrl = savedRequest.getRedirectUrl();
		
		redirectStrategy.sendRedirect(req, res, targetUrl);
		
	}
	
	private void useRefererUrl(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String targetUrl = req.getHeader("REFERER");
		
		redirectStrategy.sendRedirect(req, res, targetUrl);
		
	}
	
	private void useDefaultUrl(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		redirectStrategy.sendRedirect(req, res, defaultUrl);
		
	}
	
	
	private int decideRedirectStrategy(HttpServletRequest req, HttpServletResponse res) {
		
		int result = 0;
		
		SavedRequest savedRequest = requestCache.getRequest(req, res);
		
		if(!"".equals(targetUrlParameter)) {
			
			String targetUrl = req.getParameter(targetUrlParameter);
			
			if(StringUtils.hasText(targetUrl)) {
				
				result = 1;
				
			}else {
				
				if(savedRequest != null) {
					
					result = 2;
					
				}else {
					
					String refererUrl = req.getHeader("REFERER");
					
					if(useReferer && StringUtils.hasText(refererUrl)) {
						
						result = 3;
						
					}else {
						
						result = 0;
						
					}
					
				}
				
			}
			
			return result;
			
		}
		
		if(savedRequest != null) {
			
			result = 2;
			
			return result;
			
		}
		
		String refererUrl = req.getHeader("REFERER");
		
		if(useReferer && StringUtils.hasText(refererUrl)) {
			
			result = 3;
			
		}else {
			
			result = 0;
			
		}
		
		return result;
		
	}

}
