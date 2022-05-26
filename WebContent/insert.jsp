<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	PhoneDao phoneDao = new PhoneDao();
	
	int count = phoneDao.personInsert(personVo);
	System.out.println(count);
	
	List<PersonVo> pList = phoneDao.personSelect();
	
	response.sendRedirect("./list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head><meta http-equiv="refresh" content="0;url=./list.jsp">
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>

</body>
</html>