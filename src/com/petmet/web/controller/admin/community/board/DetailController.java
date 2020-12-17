package com.petmet.web.controller.admin.community.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmet.web.entity.Board;
import com.petmet.web.entity.BoardCategory;
import com.petmet.web.service.BoardService;

import oracle.security.o3logon.b;

@WebServlet("/admin/community/board/detail")
public class DetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request
							, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		BoardService service = new BoardService();
		Board b = service.get(id);
		List<BoardCategory> cList= service.getCategoryList();
		
		request.setAttribute("b", b);
		request.setAttribute("cList", cList);
		request.getRequestDispatcher("detail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BoardService service = new BoardService();

		String button = request.getParameter("button");
		int id = Integer.parseInt(request.getParameter("id"));

		switch (button) {
		case "삭제":
			service.delete(id);
			response.sendRedirect("list");
			
			break;

		case "저장":
			int cid = Integer.parseInt(request.getParameter("category"));
			
			Board b = service.get(id);
			b.setCategoryId(cid);
			service.update(b);
			
			response.sendRedirect("detail?id=" +id);
			
			break;
		}

		// --------------------- 요청 ---------------------
	}

}
