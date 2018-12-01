package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.time.LocalDate;
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
			LocalDate day = LocalDate.now();
			int monthDay = (day.getDayOfMonth());
			logger.debug("»Ìslo dne = " + monthDay);

			logger.debug("handle");
			String searchWord = request.getParameter("search");
			List<Search> recepty = dao.searchText(searchWord);
			request.setAttribute("recepty", recepty);
			request.setAttribute("word", searchWord);
			request.getServletContext().getRequestDispatcher("/recipes.jsp").forward(request, response);

		}
	}
}
