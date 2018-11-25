package cz.czechitas.acweb.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListController {
	public static void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("listController");
		LocalDate a = LocalDate.now(); // zjistí dnesní datum a vybere z nìho jen èíslo dne
		int monthDay = (a.getDayOfMonth());

	ArrayList<String> recepty = new ArrayList<String>();
	String recept;
	recepty.add("první recept");
	recepty.add("druhý recept");
	recepty.add("tøetí recept");
	recepty.add("ètvrtý recept");
	recepty.add("pátý recept");
	recepty.add("šestý recept");
	recepty.add("sedmý recept");
	recepty.add("osmý recept");
	
	request.setAttribute("recepty",recepty);
	

/*	BUDE TU PODM9NKA
	}*/
		
		request.getServletContext().getRequestDispatcher("/recipes.jsp").forward(request,response);
	}

}
