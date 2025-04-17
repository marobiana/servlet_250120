package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz02_delete")
public class DeleteQuiz02Servlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		// id param
		int id = Integer.parseInt(request.getParameter("id"));
		
		// 디비 연결
		MysqlService mysqlService = MysqlService.getInstance(); 
		mysqlService.connect(); // DB 연결
		
		// 삭제 쿼리
		String deleteQuery = "delete from `bookmark` where id=" + id;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 디비 연결 해제
		mysqlService.disconnect(); // DB 해제
		
		// 목록 화면 이동 - redirect
		try {
			response.sendRedirect("/lesson03/quiz02_list.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
