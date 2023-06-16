<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<script>
        function play(){
            let name = ['이진성', '노승우', '박성호', '권지혜', '김은효', '이경철', '성의석', '이유진', '유성길', '한주훈', 
                '강정현', '김현우', '이영준', '김민정', '유세현', '윤기은', '오화룡', '조은별', '이가은'];
            let numbers = new Array(5);  // 랜덤 번호 5개 저장할 배열 선언
        
            for(let i = 0; i < numbers.length; i++){
                let num = Math.floor(Math.random() * name.length); //랜덤 번호
                numbers[i] = num;      

                // 중복 제거
                for(let j = 0; j < i; j++){
                    if(numbers[j] == numbers[i]){
                        //console.log("중복 번호 : " + numbers[i])
                        i--;  //중복된 인덱스 삭제함
                    }
                }
            }

            
            let winners = new Array(5) ; //당첨자 이름을 저장할 배열 선언
            for(let i=0; i<winners.length; i++){
                winners[i] = name[numbers[i]]
            }
            document.getElementById("display").innerHTML = winners;


    }
</script>
<body>
	<jsp:include page="../header.jsp" />
	<div id="container">
		<section id="memberEvent">
			<h2>*당첨자 명단*</h2>
			
			<p id = "coupon2">
				<img src="../resources/images/bronx.png" alt = "쿠폰사진">
			</p>
			<button type="button" onclick="play()">추첨하기</button>
			
			
			<p id="display"></p>
			
		</section>
	
	</div>
	<jsp:include page="/footer.jsp" />
</body>
</html>