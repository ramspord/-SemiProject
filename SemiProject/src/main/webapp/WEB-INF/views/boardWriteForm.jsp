<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>글쓰기 페이지</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap" rel="stylesheet">
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <style>
        .mt-4{font-family: 'Dongle', sans-serif; font-size: 60px;}
        .page-header{font-family: 'Dongle', sans-serif; font-size: 40px;}
        </style>
        
    </head>
    <body class="sb-nav-fixed">
        <%@include file="includes/navTop.jsp" %>
        
        <div id="layoutSidenav">
            <%@include file="includes/navSide.jsp" %>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Cat's all 게시판</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">게시판</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                커뮤니티
                            </div>
                            <div class="row" style="margin-bottom:20px; margin-left:1px;">
							<div class="col-lg-12">
							<h1 class="page-header">글 쓰기 페이지</h1>
							</div>
							</div>
							
							<div class="panel" style="margin-left:1px;">
							<div id="contAreaBox">
							<div class="panel">
							<div class="panel-body">
							
							<form role="form" action="boardWrite" method="post">
							<div class="table-responsive" style="text-align:center;">
								<table id="datatable-scroller"
									class="table table-bordered tbl_Form">
									<caption></caption>
									<colgroup>
										<col width="250px" />
										<col />
									</colgroup>
									<tbody>
										<tr>
											<th class="active" >작성자</th>
											<td class="form-inline"><input type="text" id="id"
												name="id" class="form-control" style="width: 200px" />
											</td>
										</tr>
										<tr>
											<th class="active">제목</th>
											<td class="form-inline"><input type="text" id="title"
												name="title" class="form-control" style="width: 840px" />
											</td>
										</tr>
										<tr>
											<th class="active" >내용</th>
											<td class="form-inline"><textarea 
													id="content" name="content" cols="100" rows="10"
													class="form-control"></textarea></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div style="margin-left:1px;">
								<button type="submit" class="btn btn-primary">등록</button>
								<a href="board" class="btn btn-danger">취소</a>
							</div>
							</form>
							</div>
							</div>
							</div>
							</div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Cat's all</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" integrity="sha512-3j3VU6WC5rPQB4Ld1jnLV7Kd5xr+cq9avvhwqzbH/taCRNURoeEpoPBK9pDyeukwSxwRPJ8fDgvYXd6SkaZ2TA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://kit.fontawesome.com/dcec9202a0.js" crossorigin="anonymous"></script>
		<script src="../js/my.js"></script>
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script> -->
        <!-- <script src="/resources/assets/demo/chart-area-demo.js"></script>
        <script src="/resources/assets/demo/chart-bar-demo.js"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/resources/js/datatables-simple-demo.js"></script>
    </body>
</html>
