package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// response header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 날짜 객체
		Date now = new Date();
		
		// 출력  "오늘의 날짜는 2025년 4월 3일"
		PrintWriter out = response.getWriter();
		out.print("오늘의 날짜는 ");
		// 포맷 변환
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
		out.println(sdf.format(now));
	}
}
