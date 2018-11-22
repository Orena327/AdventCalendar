package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DetailController {
	public static void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {{
		System.out.println("detailController");
		LocalDate a = LocalDate.now(); // zjist� dnesn� datum a vybere z n�ho jen ��slo dne
		int monthDay = (a.getDayOfMonth());
		String action = request.getParameter("action"); // o�ez stringu
		String cisloDne =action.substring(3);
		System.out.println(cisloDne);
	
		int aInt = Integer.parseInt(cisloDne); //p�eveden�  string na int

		if (aInt <= monthDay) { 
			request.getServletContext().getRequestDispatcher("/procedure.jsp").forward(request,response);

		} else if (aInt > monthDay) {
		
			request.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
			}
	}

		}



	private static ServletRequest getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}
}