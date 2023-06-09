<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>학점처리</title>
<script>
	//점수를 입력하지 않았거나, 문자인 경우 (name속성으로 처리)
	
	/* function checkScore(){
		alert("테스트");
	} */
	
		function checkScore(){
		
		let form = document.form1;
		let score = form.score;
		//score.value.trim() // 공백문자를 제거함(안되는디...?)
		//트림이안된다면? score.value.trim() == ''
		if(score.value == "" || isNaN(score.value) 
				|| score.value.trim() == ''){
			alert("숫자를 입력해주세요~")
			score.focus()
			return false;
		}else if(score.value < 0 ||score.value >100){
			alert("1~100까지 입력가능합니다.")
			score.select();
			return false;
		}else{
			form.submit();
		}
		
	}
	
</script>
</head>
<body>
	<h3> 정수를 입력해 주세요</h3>
	<form action="scoreTest.jsp" method="get" name="form1">
		<p>점수 : <input type="text" name = "score">
				  <input type="button" value="학점출력" onclick="checkScore()">
		</p>
	</form>
</body>
</html>