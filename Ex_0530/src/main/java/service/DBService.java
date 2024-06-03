package service;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBService {
	static DBService single = null;
	
	public static DBService getInstance() {
		if(single==null) {
			single = new DBService();
		}
		return single;
	}
	
	DataSource ds;
	public DBService() {
		try {
			InitialContext ic = new InitialContext();
			Context ctx = (Context)ic.lookup("java:comp/env");
			ds=(DataSource)ctx.lookup("jdbc/oracle_test");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public Connection getConnection() {
		Connection conn= null;
		try {
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
	}
}
