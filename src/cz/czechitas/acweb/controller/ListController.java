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
		LocalDate a = LocalDate.now(); // zjist� dnesn� datum a vybere z n�ho jen ��slo dne
		int monthDay = (a.getDayOfMonth());

	ArrayList<String> recepty = new ArrayList<String>();
	String recept;
	recepty.add("prvn� recept");
	recepty.add("druh� recept");
	recepty.add("t�et� recept");
	recepty.add("�tvrt� recept");
	recepty.add("p�t� recept");
	recepty.add("�est� recept");
	recepty.add("sedm� recept");
	recepty.add("osm� recept");
	
	request.setAttribute("recepty",recepty);
	

/*	BUDE TU PODM9NKA
	}*/
		
		request.getServletContext().getRequestDispatcher("/recipes.jsp").forward(request,response);
	}

}
