<%@page import="com.javaex.dao.PhoneDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "java.util.*" %>
<%  
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> pList = phoneDao.personSelect();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<% for(int i = 0; i < pList.size(); i++) {%>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=pList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=pList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=pList.get(i).getCompany()%></td>
		</tr>
		<tr>
			<td>
				<a href="./updateForm.jsp?personId=<%=pList.get(i).getPersonId() %>">[수정]</a>
			</td>
			<td>
				<a href="./delete.jsp?personId=<%=pList.get(i).getPersonId() %>">[삭제]</a>
			</td>
		</tr>
	</table><br>	<%} %>
	
	<br><a href="./writeForm.jsp">추가정보 등록</a>
</body>
</html>