package cz.czechitas.acweb.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Dao {
	
	 private DataSource getDataSource() {
	        try {
	            Context ctx = new InitialContext();
	            return (DataSource)ctx.lookup("java:/comp/env/adventnikalendarResource");
	        } catch (NamingException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }

}
