<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
		
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Cat's all</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <!-- 만약에 음성인식 AI 넣는다면 이 위치에다가 -->
             
            </form>
           
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <!-- 이곳에 로그인 정보 넣기 -->
            <span id="loginSpan" class="badge bg-dark text-white ms-1 rounded-pill">
				ID&nbsp;<input id="id" type="text" style="width:100px;  border-radius: 2em; ">
				PW&nbsp;<input id="pw" type="password" style="width:100px;  border-radius: 2em; ">
				<button id="loginBtn" class="badge bg-dark text-white ms-1 rounded-pill">로그인</button>
							
				<button class="badge bg-dark text-white ms-1 rounded-pill">
				<a href="#" class="text-white" onclick='window.open("memberInsert.html", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=800,width=400,height=1400");'>회원가입</a>
				</button>
			</span>

     </nav>