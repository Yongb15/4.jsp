package service;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBService {
	// 싱글톤 패턴
	static DBService single = null;			// 변수를 만듬
	
	public static DBService getInstance() {		// getInstance() 호출될 시
		if(single == null) {				// single이 null일 경우
			single = new DBService();		// 객체를 만듬
		}
		return single;
	}
	
	// DB접속
	DataSource ds;
	
	public DBService() {
		try {
			InitialContext ic = new InitialContext();
			Context ctx = (Context)ic.lookup("java:comp/env");
			ds = (DataSource)ctx.lookup("jdbc/oracle_test");
		} catch (Exception e) {
			
		}
	}
	
	public Connection getConnection() {
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return conn;
	}
}



