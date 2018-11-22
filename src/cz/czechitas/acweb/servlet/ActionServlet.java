package cz.czechitas.acweb.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cz.czechitas.acweb.controller.DetailController;
import cz.czechitas.acweb.controller.ListController;

@WebServlet("/ActionServlet")
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ListController listController = new ListController();
	private static DetailController detailController = new DetailController();

	public ActionServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action"); // value z action
 
		if (action!=null && action.startsWith("day") ) {
			detailController.handle(request, response);
			}
		

		else {
			listController.handle(request, response);
			
		}

		/*response.getWriter().append("Served at: ").append(request.getContextPath()).append(" Jsem na servletu");*/

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
