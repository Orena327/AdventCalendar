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



/*	BUDE TU PODM9NKA
	}*/
		
		request.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
	}

}
