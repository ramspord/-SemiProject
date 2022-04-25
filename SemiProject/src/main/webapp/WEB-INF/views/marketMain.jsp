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
        <title>상점 페이지</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap" rel="stylesheet">
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <style>
        .mt-4{font-family: 'Dongle', sans-serif; font-size: 60px;}
        </style>
    </head>
    
    <body class="sb-nav-fixed">
        <%@include file="includes/navTop.jsp" %>
        
        <div id="layoutSidenav">
            <%@include file="includes/navSide.jsp" %>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Cat's all 상점</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">상점</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                상점
                            </div>
                            <div class="row">
                            
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        식기
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/doit.jpg">
                                    <br>
                                    <a href="marketAutoDish" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        물그릇
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/alive.jpg">
                                    <br>
                                    <a href="marketFixedBowl" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        장난감
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/gallery/thumbs/soundball.jpg">
                                    <br>
                                    <a href="marketNormalToy" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        이동장
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/gallery/thumbs/21.jpg">
                                    <br>
                                    <a href="marketBackpackBag" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>
                                                        <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        사료
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/gallery/thumbs/origenfeed.jpg">
                                    <br>
                                    <a href="marketDryFeed" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        간식
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/gallery/thumbs/tuna.jpg">
                                    <br>
                                    <a href="marketWetSnack" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>
                            
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        캣폴
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/gallery/thumbs/pol.png">
                                    <br>
                                    <a href="marketPole" class="btn btn-primary" >해당 상점으로 이동</a>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        캣휠
                                    </div>
                                    <!-- 이 위치에 사진 -->
                                    <img src= "images/gallery/thumbs/wheel.png">
                                    <br>
                                    <a href="marketWheel" class="btn btn-primary" >해당 상점으로 이동</a>
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
