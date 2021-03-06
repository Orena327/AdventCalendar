package cz.czechitas.acweb.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cz.czechitas.acweb.controller.DetailController;
import cz.czechitas.acweb.controller.ListController;
import cz.czechitas.acweb.controller.SearchController;

@WebServlet("/ActionServlet")
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ListController listController = new ListController();
	private static DetailController detailController = new DetailController();
	private static SearchController searchController = new SearchController();

	public ActionServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("search")) {
			searchController.handle(request, response);
		} else if (action != null && action.startsWith("day")) {
			detailController.handle(request, response);
		} else {
			listController.handle(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}