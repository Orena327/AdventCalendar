package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cz.czechitas.acweb.dao.Dao;

public class ListController {
	private Dao dao = new Dao();

	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LocalDate a = LocalDate.now(); 
		int monthDay = (a.getDayOfMonth());

		List<String> recepty = dao.listRecipes(monthDay);
		request.setAttribute("recepty", recepty);
		request.getServletContext().getRequestDispatcher("/recipes.jsp").forward(request, response);
	}

}
