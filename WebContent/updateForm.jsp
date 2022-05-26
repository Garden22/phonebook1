<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int personId = Integer.parseInt(request.getParameter("personId"));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>수정폼</h2>
	<p>
		수정 화면입니다. 아래 항목을 기입하고 "수정" 버튼을 클릭하세요
	</p>
	<form action="./update.jsp" method="get">
	이름 <input type="text" name="name" value=""><br>
	핸드폰 <input type="text" name="hp" value=""><br>
	회사 <input type="text" name="company" value=""><br>
	ID <input  type="text" name="personId" value="<%=personId%>"><br>
	
	<button type="submit">수정</button>
	</form>
</body>
</html>