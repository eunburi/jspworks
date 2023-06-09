<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>숫자 표기</title>
</head>
<body>
	<!-- 천단위 구분기호 표시 -->
	<p>숫자 : <fmt:formatNumber value="3200100"/>
	<p><fmt:formatNumber value="3200100" type="number" /> 
	<p><fmt:formatNumber value="150200" pattern="#,##0.00" /> 
	
	<!-- 통화 '\\'원화, '$' - 달러-->
	<p><fmt:formatNumber value="3200100" type="currency"
		currencySymbol="\\"/>
		
	<!-- 퍼센트 -->	
	<p><fmt:formatNumber value="0.25" type="percent" />
		
</body>
</html>