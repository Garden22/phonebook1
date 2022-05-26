<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%
	int personId = Integer.parseInt(request.getParameter("personId"));

	PhoneDao phoneDao = new PhoneDao();
	int count = phoneDao.personDelete(personId);
	
	System.out.println(count);
	
	response.sendRedirect("./list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	췍
</body>
</html>