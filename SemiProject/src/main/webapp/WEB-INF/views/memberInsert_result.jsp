<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공 페이지</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap" rel="stylesheet">
<style type="text/css">

.info{font-family: 'Dongle', sans-serif; font-size: 60px;}

.joinForm {
  position:absolute;
  width:400px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:30%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}
.textForm {
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}
.h2 {
  text-align: center;
  margin: 30px;
}
.signup_ok {
 display: inline-block;
  padding: 12px 24px;
  background: rgb(220,220,220);
  font-weight: bold;
  color: rgb(120,120,120);
  border: none;
  outline: none;
  border-radius: 3px;
  cursor: pointer;
  transition: ease .3s;
}

.signup_ok:hover {
  background-position: right;
  background: #FFDAB9;
  color: #ffffff;

}
</style>
</head>
<body>
<form class="joinForm">
	<h2 class="info">회원가입 성공</h2>
	
   <div class="textForm">
   ${memberVO.getId() }님 회원가입 되셨습니다.
   </div>
   
   <input type="button" value=" 창닫기 " class="signup_ok" onclick="window.close();">
   </form>
</body>
</html>
