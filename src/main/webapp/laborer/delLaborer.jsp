<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='com.my.hr.service.*' %>
<%!
	LaborerService laborerService = new LaborerServiceImpl();
%>
<%
	String laborerId = request.getParameter("laborerId");	
	laborerService.delLaborer(Integer.parseInt(laborerId));
%>