package com.petmet.web.controller.admin.petPlace.category;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmet.web.entity.PetPlaceCategoryView;
import com.petmet.web.service.PetPlaceCategoryService;

@WebServlet("/admin/petplace/category/list")
public class ListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page_ = request.getParameter("p");
		String query_ = request.getParameter("q");
		
		String query = "";
		
		int page = 1;
		int size = 5; //페이지에 표시할 레코드 개수
		
		if(page_!= null && !page_.equals(""))
			page = Integer.parseInt(page_);
		if(query_ != null && !query_.equals(""))
			query = query_;
		
		PetPlaceCategoryService service = new PetPlaceCategoryService();
//		List<PetPlaceCategoryView> list = service.getViewList();
		List<PetPlaceCategoryView> list = service.getViewList(query, page, size);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("list.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PetPlaceCategoryService service = new PetPlaceCategoryService();
		
		String[] dels = request.getParameterValues("del");
		
		 int[] ids = new int[dels.length];
		 
		 for(int i = 0; i<dels.length; i++) {
			ids[i] = Integer.parseInt(dels[i]);
			service.delete(ids[i]);
		 }
		 
		 response.sendRedirect("list");
		 
//		service.delete(id)
	}
	
}
