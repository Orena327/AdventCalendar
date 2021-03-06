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

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import cz.czechitas.acweb.bean.Recipe;
import cz.czechitas.acweb.bean.Search;


public class Dao {
	private final Logger logger = LogManager.getLogger(getClass());

	public Recipe getRecipe(int day) {

		Recipe rec = new Recipe();
		DataSource ds = getDataSource();
		try (Connection con = ds.getConnection();
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM recept WHERE id=?");
				PreparedStatement stmta = con
						.prepareStatement("SELECT * FROM suroviny WHERE recept_id=? ORDER BY id ASC");
				PreparedStatement stmtb = con
						.prepareStatement("SELECT * FROM postup WHERE recept_id=?")) {
			stmt.setInt(1, day);
			stmta.setInt(1, day);
			stmtb.setInt(1, day);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				rec.setName(rs.getString("nazev"));
				rec.setId(day);

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
			logger.error("getRecipe failed", e);
		}

		return rec;
	}

	public List<String> listRecipes(int recipeDay) {

		ArrayList<String> list = new ArrayList<>();
		DataSource ds = getDataSource();
		try (Connection con = ds.getConnection();
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM recept WHERE id <=? ORDER BY id ASC")) {
			stmt.setInt(1, recipeDay);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("nazev"));
			}
		} catch (SQLException e) {
			logger.error("listRecipes failed", e);
		}

		return list;
	}
	public List<Search> searchText(String text, int day) {
			
	       ArrayList<Search> list = new ArrayList<>();
	       DataSource ds = getDataSource();
		try (Connection con = ds.getConnection();
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM recept"
						+ " WHERE id in"
						+ "        (SELECT recept_id FROM adventnikalendar.suroviny "
						+ "         WHERE nazev LIKE concat('%',?,'%') COLLATE utf8mb4_general_ci) "
						+ "   AND id <=?"
						+ " ORDER BY id ASC")) {
			stmt.setString(1, text);
			stmt.setInt(2, day);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				 Search s = new Search();
				s.setName(rs.getString("nazev"));
				s.setId(rs.getInt("id"));
				list.add(s);
				
			}
		} catch (SQLException e) {
			logger.error("searchText failed", e);
		}

		return list;
	}

	private DataSource getDataSource() {
		try {
			Context ctx = new InitialContext();
			return (DataSource) ctx.lookup("java:/comp/env/adventnikalendarResource");
		} catch (NamingException e) {
			logger.error("getDataSource failed", e);
		}
		return null;
	}

}
