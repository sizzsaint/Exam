package chapter10;

import java.sql.*;

public class MemberMgr { //생성자
	private DBConnectionMgr pool; 

	public MemberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();//DAO가 만들어질떄 커넥션풀도 동시에 생성됨.
		} catch (Exception e) {
			System.out.println("Error : 커넥션 연결 실패");
		}
	}

	public boolean PassCheck(String cust_id, String cust_passwd) { //메서드
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; //select
		boolean result = false; //반환형
		try {
			con = pool.getConnection();
			String query = "select count(*) from member where id =? and passwd=?";
			//count(*)갯수구하기
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, cust_id);
			pstmt.setString(2, cust_passwd);
			rs = pstmt.executeQuery();
			rs.next();
			if (rs.getInt(1) > 0) 
				//"select count(*)함수이기때문에.getInt(1)인덱스가 온것이다.
				result = true;
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}
}
