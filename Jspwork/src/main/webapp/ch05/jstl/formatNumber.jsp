<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ǥ��</title>
</head>
<body>
	<!-- õ���� ���б�ȣ ǥ�� -->
	<p>���� : <fmt:formatNumber value="3200100"/>
	<p><fmt:formatNumber value="3200100" type="number" /> 
	<p><fmt:formatNumber value="150200" pattern="#,##0.00" /> 
	
	<!-- ��ȭ '\\'��ȭ, '$' - �޷�-->
	<p><fmt:formatNumber value="3200100" type="currency"
		currencySymbol="\\"/>
		
	<!-- �ۼ�Ʈ -->	
	<p><fmt:formatNumber value="0.25" type="percent" />
		
</body>
</html>