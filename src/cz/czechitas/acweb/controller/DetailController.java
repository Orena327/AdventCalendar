package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import cz.czechitas.acweb.bean.Recipe;
import cz.czechitas.acweb.dao.Dao;

public class DetailController {
	private final Logger logger = LogManager.getLogger(getClass());
	private Dao dao = new Dao();

	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			logger.debug("handle");

			LocalDate a = LocalDate.now();
			int monthDay = (a.getDayOfMonth());
			String action = request.getParameter("action");
			String dayNumber = action.substring(3);
			logger.debug("Èíslo dne = "+ dayNumber);

			int day = Integer.parseInt(dayNumber);

			if (day > monthDay) {
				logger.debug("Den je vìtší než "+monthDay);

				request.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
				return;
			}
			Recipe recept = new Recipe();
			recept = dao.getRecipe(day);

			request.setAttribute("recept", recept);

			request.getServletContext().getRequestDispatcher("/procedure.jsp").forward(request, response);

		}

	}


}
