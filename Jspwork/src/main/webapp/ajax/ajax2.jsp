<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script type="text/javascript">
		function fn_process(){
			//alert("test");
			$.ajax({
				type:"get",
				url: "http://localhost:8080/ajax1",
				dataType: "text",
				data:{message:"안녕~ Server!"},
				success:function(data){ // 서블릿의 msg가 data임
					/* $('#message').append(data); */
					$('#message').text(data);
				},
				error:function(){
					alert("에러발생!!!!!!!!!에러!!!!!!")
				}
					
			});
		}

 </script>
</head>
<body>
	<button type="button" onclick="fn_process()"> 전송 </button>
	<p id="message"></p>
</body>
</html>