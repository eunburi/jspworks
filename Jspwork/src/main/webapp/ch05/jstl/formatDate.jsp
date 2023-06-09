<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl - ��¥ ǥ��</title>
</head>
<body>
	<h2>��¥�� �پ��� �������� ǥ��</h2>
	<jsp:useBean id="now" class="java.util.Date" />
	<p>���� ��¥ �� �ð� : ${now }
	<p><fmt:formatDate value="${now}" type="date"/>
	<p><fmt:formatDate value="${now}" type="time"/>
	<p><fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss a"/>
	
	<p> ****Ÿ���� ���***** </p>
	<p><fmt:timeZone value="Europe/london">
		���� : <fmt:formatDate value="${now }" type="both"/><br>
		���� : <fmt:formatDate value="${now }" type="both" dateStyle="full"/><br>
		���� : <fmt:formatDate value="${now }" type="both" timeStyle="full"/><br>
	</fmt:timeZone>	
	<p><fmt:timeZone value="America/New_York">
		���� : <fmt:formatDate value="${now }" type="both"/><br>
		���� : <fmt:formatDate value="${now }" type="both" dateStyle="full"/><br>
		���� : <fmt:formatDate value="${now }" type="both" timeStyle="full"/><br>
	
	</fmt:timeZone>
	
	
	
</body>
</html>