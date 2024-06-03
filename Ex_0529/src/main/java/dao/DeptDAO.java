package dao;
// DAO(Data Access Object)
// DB접속을 목적으로 하는 클래스
// DB로부터 connection 객체를 얻어옴

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;

import service.DBService;
import vo.DeptVO;

public class DeptDAO {
	static DeptDAO single = null;
	
	public static DeptDAO getInstance() {
		if(single == null) {
			single = new DeptDAO();
		}
		return single;
	}
	
	// 모든 부서를 조회하는 selectList 메서드 만들기
	public List<DeptVO> selectList() {
		List<DeptVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from dept";
		
		try {
			// 1. connection 객체를 얻어오기
			conn = DBService.getInstance().getConnection();
			// 2. 명령처리객체 정보를 얻어오기
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				DeptVO vo = new DeptVO();
				vo.setDeptno(rs.getInt("deptno"));
				vo.setDname(rs.getString("dname"));
				vo.setLoc(rs.getString("loc"));
				
				list.add(vo);
			}
						
		} catch (Exception e) {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return list;
	}
}
