<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����ó��</title>
<script>
	//������ �Է����� �ʾҰų�, ������ ��� (name�Ӽ����� ó��)
	
	/* function checkScore(){
		alert("�׽�Ʈ");
	} */
	
		function checkScore(){
		
		let form = document.form1;
		let score = form.score;
		//score.value.trim() // ���鹮�ڸ� ������(�ȵǴµ�...?)
		//Ʈ���̾ȵȴٸ�? score.value.trim() == ''
		if(score.value == "" || isNaN(score.value) 
				|| score.value.trim() == ''){
			alert("���ڸ� �Է����ּ���~")
			score.focus()
			return false;
		}else if(score.value < 0 ||score.value >100){
			alert("1~100���� �Է°����մϴ�.")
			score.select();
			return false;
		}else{
			form.submit();
		}
		
	}
	
</script>
</head>
<body>
	<h3> ������ �Է��� �ּ���</h3>
	<form action="scoreTest.jsp" method="get" name="form1">
		<p>���� : <input type="text" name = "score">
				  <input type="button" value="�������" onclick="checkScore()">
		</p>
	</form>
</body>
</html>