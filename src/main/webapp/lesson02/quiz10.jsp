<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱-아이유</title>
<!-- 부트스트랩 CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
header {height:100px;}
nav {height:40px;}
.contents {min-height:500px;}
footer {height:100px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-warning d-flex align-items-center">
			<%-- 로고 --%>
			<div class="bg-warning col-2">
				<h3 class="text-success">Melong</h3>
			</div>
			
			<%-- 검색 --%>
			<div class="bg-light col-10">
				<div class="input-group">
					<input type="text" class="form-control col-6" >
					<div class="input-group-append">
						<button class="btn btn-secondary" type="button">검색</button>
					</div>
				</div>
			</div>
		</header>
		<nav class="bg-success">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents bg-info">
			
		</section>
		<footer class="bg-danger">
			<hr>
			<small class="text-secondary">Copyright 2025. melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>