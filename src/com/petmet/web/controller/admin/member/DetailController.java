package com.petmet.web.controller.admin.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmet.web.entity.MemberView;
import com.petmet.web.service.MemberService;

@WebServlet("/admin/member/detail")
public class DetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		MemberService memberService= new MemberService();
		MemberView memberView = memberService.get(id);
		
		request.setAttribute("mv", memberView);
		request.getRequestDispatcher("detail.jsp").forward(request, response);
	}
}
