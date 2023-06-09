<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl - 날짜 표기</title>
</head>
<body>
	<h2>날짜를 다양한 형식으로 표기</h2>
	<jsp:useBean id="now" class="java.util.Date" />
	<p>현재 날짜 및 시간 : ${now }
	<p><fmt:formatDate value="${now}" type="date"/>
	<p><fmt:formatDate value="${now}" type="time"/>
	<p><fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss a"/>
	
	<p> ****타임존 출력***** </p>
	<p><fmt:timeZone value="Europe/london">
		런던 : <fmt:formatDate value="${now }" type="both"/><br>
		런던 : <fmt:formatDate value="${now }" type="both" dateStyle="full"/><br>
		런던 : <fmt:formatDate value="${now }" type="both" timeStyle="full"/><br>
	</fmt:timeZone>	
	<p><fmt:timeZone value="America/New_York">
		뉴욕 : <fmt:formatDate value="${now }" type="both"/><br>
		뉴욕 : <fmt:formatDate value="${now }" type="both" dateStyle="full"/><br>
		뉴욕 : <fmt:formatDate value="${now }" type="both" timeStyle="full"/><br>
	
	</fmt:timeZone>
	
	
	
</body>
</html>