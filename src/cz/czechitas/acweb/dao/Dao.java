package cz.czechitas.acweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import cz.czechitas.acweb.bean.Recipe;

public class Dao {

	public Recipe getRecipe(int day) {

		Recipe rec = new Recipe();
		DataSource ds = getDataSource();
		try (Connection con = ds.getConnection();
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM adventnikalendar.recept WHERE id=?");
				PreparedStatement stmta = con
						.prepareStatement("SELECT * FROM adventnikalendar.suroviny WHERE recept_id=?");
				PreparedStatement stmtb = con
						.prepareStatement("SELECT * FROM adventnikalendar.postup WHERE recept_id=?")) {
			stmt.setInt(1, day);
			stmta.setInt(1, day);
			stmtb.setInt(1, day);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				rec.setName(rs.getString("nazev"));

				ResultSet rsa = stmta.executeQuery();
				while (rsa.next()) {
					rec.getSuroviny().add(rsa.getString("nazev"));

				}
				ResultSet rsb = stmtb.executeQuery();
				while (rsb.next()) {
					rec.getPostup().add(rsb.getString("postup"));

				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rec;
	}

	public List<String> listRecipes(int recipeDay) {

		ArrayList<String> list = new ArrayList<>();
		DataSource ds = getDataSource();
		try (Connection con = ds.getConnection();
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM adventnikalendar.recept WHERE id <=?")) {
			stmt.setInt(1, recipeDay);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("nazev"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	private DataSource getDataSource() {
		try {
			Context ctx = new InitialContext();
			return (DataSource) ctx.lookup("java:/comp/env/adventnikalendarResource");
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return null;
	}

}
