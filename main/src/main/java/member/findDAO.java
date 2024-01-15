package member;
import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Date;
import java.util.*;

public class findDAO {
	private PreparedStatement pstmt;
	private Statement stmnt;
	private Connection conn;
	

	public void connect() throws Exception {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			
			
			DataSource dataFactory = (DataSource) envContext.lookup("jdbc/mysqlpool");
		//	dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			
			conn=dataFactory.getConnection();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String findId(String findname, String hp1, String hp2, String hp3) {
		String find_id = null;
		
		try {
			connect();
				
			String sql = "SELECT user_id FROM r_member WHERE user_name=? and hp1=? and hp2=? and hp3=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, findname);
			pstmt.setString(2, hp1);
			pstmt.setString(3, hp2);
			pstmt.setString(4, hp3);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				find_id = rs.getString("user_id");
				System.out.println(find_id);
				
			}
			 if (rs != null) { //rs 객체 종료
		            try {
		                rs.close();
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		        if (pstmt != null) { //pstmt 객체 종료
		            try {
		                pstmt.close();
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		        if (conn != null) { // conn 객체 종료
		            try {
		                conn.close();
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		return find_id;
}
	
	public int idcheck(String findname, String hp1, String hp2, String hp3) {
		System.out.println("아이디 정보 확인");
		int ok = 0;
		try {
		connect();
		String sql = "SELECT user_name FROM r_member WHERE hp1=? and hp2=? and hp3=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hp1);
		pstmt.setString(2, hp2);
		pstmt.setString(3, hp3);
		
		ResultSet rs = pstmt.executeQuery();
		
		
		if(rs.next()) {
			if(rs.getString("user_name").equals(findname)) {
				System.out.println("이름, 휴대전화정보 일치");
				ok=1;
			} else {
				System.out.println("이름정보 불일치");
				ok=2;
			}
		} else {
			System.out.println("휴대전화정보 불일치");
			ok=3;
		} 
		
		if (rs != null) { //rs 객체 종료
            try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) { //pstmt 객체 종료
            try {
                pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (conn != null) { // conn 객체 종료
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ok;
	}
	
	public int pwdcheck(String findname, String findID, String hp1, String hp2, String hp3) {
		System.out.println("비밀번호 정보 확인");
		int ok_pwd = 0;
		try {
		connect();
		String sql = "SELECT user_ID FROM r_member WHERE hp1=? and hp2=? and hp3=? and user_name=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hp1);
		pstmt.setString(2, hp2);
		pstmt.setString(3, hp3);
		pstmt.setString(4, findname);
		
		ResultSet rs = pstmt.executeQuery();
		
		
		if(rs.next()) {
			if(rs.getString("user_ID").equals(findID)) {
				System.out.println("정보 일치");
				ok_pwd=1;
			} else {
				System.out.println("아이디 정보 불일치");
				ok_pwd=2;
			}
		} else {
			System.out.println("정보불일치");
			ok_pwd=3;
		} 
		
		if (rs != null) { //rs 객체 종료
            try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) { //pstmt 객체 종료
            try {
                pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (conn != null) { // conn 객체 종료
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ok_pwd;
	}
}