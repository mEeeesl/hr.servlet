<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='com.my.hr.service.*' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>
<%!
	LaborerService laborerService = new LaborerServiceImpl();
%>
<%
	String name = request.getParameter("name");
	String hireDate = request.getParameter("hireDate");
	
	laborerService.addLaborer(name,
			LocalDate.parse(hireDate, DateTimeFormatter.ISO_DATE));
%>