package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import cz.czechitas.acweb.bean.Search;
import cz.czechitas.acweb.dao.Dao;

public class SearchController {
	private final Logger logger = LogManager.getLogger(getClass());
	private Dao dao = new Dao();

	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			logger.debug("handle");
			
			String searchWord = request.getParameter("search");
			ArrayList<Search> recepty=new ArrayList<Search>();
			
			request.setAttribute("recepty", recepty);
			request.getServletContext().getRequestDispatcher("/recipes.jsp").forward(request, response);

		}
	}
}
