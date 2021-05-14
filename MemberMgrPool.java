package chapter9;

import java.sql.*;
import java.util.*;

public class MemberMgrPool {

	private DBConnectionMgr pool = null;

	public MemberMgrPool() { //생성자
		try {
			pool = DBConnectionMgr.getInstance();
			//풀을 얻어온다 
		} catch (Exception e) {
			System.out.println("Error : 커넥션 얻어오기 실패");
		}
	}// MemberMgrPool()

	public Vector getMemberList() { //비즈니스 메소드
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();

		try {
			conn = pool.getConnection();
			String strQuery = "select * from member";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			while (rs.next()) {
				RegisterBean regBean = new RegisterBean();
				//rs에서 bean으로 데이터를 담는다.
				regBean.setMem_id(rs.getNString("id"));
				regBean.setMem_passwd(rs.getNString("passwd"));
				regBean.setMem_name(rs.getNString("name"));
				regBean.setMem_num1(rs.getNString("mem_num1"));
				regBean.setMem_num2(rs.getNString("mem_num2"));
				regBean.setMem_email(rs.getNString("e_mail"));
				regBean.setMem_phone(rs.getNString("phone"));
				regBean.setMem_zipcode(rs.getNString("zipcode"));
				regBean.setMem_address(rs.getNString("address"));
				regBean.setMem_job(rs.getNString("job"));
				vecList.add(regBean);
			}
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			pool.freeConnection(conn, stmt, rs);
		}
		return vecList;
	}

}// class
