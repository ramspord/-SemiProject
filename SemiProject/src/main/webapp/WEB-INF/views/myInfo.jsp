<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/resources/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/insert.css" >
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../js/my.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
</script>
</head>
<body class="sb-nav-fixed">

<%@include file="includes/navTop.jsp" %>
        
        <%@include file="includes/navMy.jsp" %>

	<form action="myInfo_Update" method="post" class="joinForm">
                                                                                           
      <h2 class="info">회원정보 수정</h2>
      <input type="hidden" id="no" value="${data[0].no }">
      
      <div class="textForm">
      	<label for="id">아이디</label>
        <input name="id" type="text" class="user_id" value="${data[0].id}" readonly style="background:#fff"></input>
      </div>

      
      <div class="textForm">
      <label for="password">비밀번호</label>
        <input name="pw" type="password" class="user_pw"  value="${data[0].pw}"  >
      </div>



      <div class="textForm">
      <label for="name">이름</label>
        <input name="name" type="text" class="user_name"  value="${data[0].name}"  >
      </div>

      
       <div class="textForm">
       <label for="email">이메일</label>
        <input name="email" type="text" class="user_email"  value="${data[0].email}"  >
      </div>

      
      <div class="textForm">
      <label for="nickname">닉네임</label>
        <input name="nickname" type="text" class="user_nickname"  value="${data[0].nickname}"  >
      </div>

      
      <div class="textForm">
      <label for="phone">전화번호</label>
        <input name="phone" type="number" class="user_cellphoneNo"  value="${data[0].phone}"  >
      </div>

      
      <br>
      <!-- 우편번호 주소란 -->
      <input type="button" onclick="sample4_execDaumPostcode()" class="btnm" value="우편번호 찾기"><br>
      
      <div class="textForm">
      <label for="postcode">우편번호</label>
      <input name="postcode" type="text" id="sample4_postcode" class="user_postcode" value="${data[0].postcode}">
      </div>
      
      <div class="textForm">
      <label for="roadAddress">도로명주소</label>
      <input name="roadAddress" type="text" id="sample4_roadAddress" class="user_roadAddress" value="${data[0].roadAddress}">
      </div>
      
      <div class="textForm">
      <label for="jibunAddress">지번주소</label>
      <input name="jibunAddress" type="text" id="sample4_jibunAddress" class="user_jibunAddress" value="${data[0].jibunAddress}">
      </div>
      
      <span id="guide" style="color:#999;display:none" class="user_guide"></span>
      
      <div class="textForm">
      <label for="detailAddress">상세주소</label>
      <input name="detailAddress" type="text" id="sample4_detailAddress" class="user_detailAddress" value="${data[0].detailAddress}">
      </div>
      
      <div class="textForm">
      <label for="extraAddress">참고항목</label>
      <input name="extraAddress" type="text" id="sample4_extraAddress" class="user_extraAddress" value="${data[0].extraAddress}">
      </div>
      
      <br>
      
      <input type="submit" class="btnm" id="myInfo_Update" value="정보수정"/>
      <input type="submit" class="btnm" id="myInfo_Delete" value="회원탈퇴"/>
      <br><br><br>
      <div>
      <!-- 소셜 로그인 공간 -->
      </div>
    </form>
    
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" integrity="sha512-3j3VU6WC5rPQB4Ld1jnLV7Kd5xr+cq9avvhwqzbH/taCRNURoeEpoPBK9pDyeukwSxwRPJ8fDgvYXd6SkaZ2TA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://kit.fontawesome.com/dcec9202a0.js" crossorigin="anonymous"></script>
		<script src="../js/my.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/resources/js/datatables-simple-demo.js"></script>
</body>
</html>