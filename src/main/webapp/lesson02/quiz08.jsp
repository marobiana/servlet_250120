<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교포문고</title>
<!-- 부트스트랩 CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {
    { 
        put("id", 1000);
        put("title", "아몬드"); 
        put("author", "손원평"); 
        put("publisher", "창비");
        put("image", "https://upload.wikimedia.org/wikipedia/ko/3/33/%EC%95%84%EB%AA%AC%EB%93%9C_%EC%86%8C%EC%84%A4_%ED%91%9C%EC%A7%80.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1001);
        put("title", "사피엔스"); 
        put("author", "유발 하라리"); 
        put("publisher", "김영사");
        put("image", "https://i.namu.wiki/i/1p-2_Nfxf-6Nk1x3tPPIIUNpNWA3T5r6_3oKysRebZJtAg6uDSRwXEF0gXfDwHhtR44oMomj-_-u6A98zLOL7A.webp");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1002);
        put("title", "코스모스"); 
        put("author", "칼 세이건"); 
        put("publisher", "사이언스북");
        put("image", "https://image.aladin.co.kr/product/24219/13/cover500/scm4015919350928.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1003);
        put("title", "나미야 잡화점의 기적"); 
        put("author", "히가시노 게이고"); 
        put("publisher", "현대문학");
        put("image", "https://upload.wikimedia.org/wikipedia/ko/4/4f/%EB%82%98%EB%AF%B8%EC%95%BC%EC%9E%A1%ED%99%94%EC%A0%90%EC%9D%98%EA%B8%B0%EC%A0%81_%ED%91%9C%EC%A7%80.jpg");
    } 
};
list.add(map);
%>
	<div class="container">
		<h1 class="text-center">책 목록</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
			<%
				for (Map<String, Object> book : list) {
			%>
				<tr>
					<td><%= book.get("id") %></td>
					<td><img src="<%= book.get("image") %>" alt="책표지" width="50"></td>
					<td><a href="/lesson02/quiz08_1.jsp?id=<%= book.get("id") %>"><%= book.get("title") %></a></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>




