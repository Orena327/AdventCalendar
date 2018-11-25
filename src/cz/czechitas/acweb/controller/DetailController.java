package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cz.czechitas.acweb.bean.Recipe;


public class DetailController {
	public static void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		{
			System.out.println("detailController");
			LocalDate a = LocalDate.now(); // zjistí dnesní datum a vybere z nìho jen èíslo dne
			int monthDay = (a.getDayOfMonth());
			String action = request.getParameter("action"); // oøez stringu
			String cisloDne = action.substring(3);
			System.out.println(cisloDne);

			int aInt = Integer.parseInt(cisloDne); // pøevedení string na int

			if (aInt > monthDay) {

				request.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
				return;
			}
			Recipe recept = new Recipe();
			recept.setName("Vánoèní štola");
			recept.getSuroviny().add("mouka");
			recept.getSuroviny().add("vejce");
			recept.getSuroviny().add("maslo");
			recept.getPostup().add("1.krok");
			recept.getPostup().add("2.krok");
			recept.getPostup().add("3.krok");
			
			request.setAttribute("recept", recept);
		
			

			request.getServletContext().getRequestDispatcher("/procedure.jsp").forward(request, response);

		}

	}

	private static ServletRequest getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}
}
