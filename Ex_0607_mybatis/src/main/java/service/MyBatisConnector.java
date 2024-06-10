package service;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConnector {
    
	// SqlSession을 생성하는 역할
	SqlSessionFactory  factory=null;
	private static MyBatisConnector connector; 
	
	// 생성자
	public MyBatisConnector()
	{
		try {
			//sqlMapConfig.xml을 읽어옴
			Reader reader = // 파일 자체를 읽어옴
				Resources.getResourceAsReader("config/mybatis/sqlMapConfig.xml");	// 문자열 형태로 읽어옴
			// SqlSessionFactoryBuilder : Mybatis 설정파일을 바탕으로 SqlSessionFactory 객체를 생성
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//single-ton
	public static MyBatisConnector getInstance(){
		if(connector==null)
			connector = new MyBatisConnector();
		return connector;
	}
	public SqlSessionFactory  getSqlSessionFactory()
	{
		return factory;
	}
}
