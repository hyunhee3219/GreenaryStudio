package member;

import java.sql.*;
import java.sql.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.util.*;

public class LoginDAO {
	private PreparedStatement pstmt;
	private Statement stmnt;
	private Connection conn;
	
	public void connect() {
		try{
			String url = "jdbc:mysql://localhost:3306/semiproject";
			   String dbId = "root";
			   String dbPass = "3219";            //MySQL에 접속을 위한 계정의 암호
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbId ,dbPass);

		System.out.println("MySQL DB 연결 성공");
	} catch(Exception e) {}
		}
		
	
	public MemberVO userLogin(String user_id, String user_pwd) {
		MemberVO vo = null;
		
		
		try {
			connect();
				
			String sql = "SELECT * FROM semi_member WHERE user_id = ? and user_pwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pwd);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVO();
				
				vo.setUser_id(rs.getString("user_id"));
				vo.setUser_pwd(rs.getString("user_pwd"));
				
				
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
		return vo;
}
	
	
	public int logincheck(String user_id, String user_pwd) {
		System.out.println("login 정보 확인");
		int ok = 0;
		try {
		connect();
		String sql = "SELECT user_pwd FROM semi_member WHERE user_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_id);
		
		ResultSet rs = pstmt.executeQuery();
		
		
		if(rs.next()) {
			if(rs.getString("user_pwd").equals(user_pwd)) {
				System.out.println("login success");
				ok=1;
			} else {
				System.out.println("비번 불일치");
				ok=2;
			}
		} else {
			System.out.println("아이디 불일치");
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
	
	public List<MemberVO> listMembers(String id) {
		List<MemberVO> list= new ArrayList<MemberVO>();
		try {
			connect();
			
			String sql = "SELECT * FROM semi_member where user_id=?";
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String user_id = rs.getString("user_id");
				String pwd = rs.getString("user_pwd");
				String name = rs.getString("user_name");
				String gender = rs.getString("gender");
				String birthy = rs.getString("birthYear");
				String birthm = rs.getString("birthMonth");
				String birthd = rs.getString("birthDay");
				String cal = rs.getString("calendar");
				String hp1 = rs.getString("hp1");
				String hp2 = rs.getString("hp2");
				String hp3 = rs.getString("hp3");
				String smsyn = rs.getString("smsyn");
				String mail_id = rs.getString("mail_id");
				String mail_domain = rs.getString("mail_domain");
				String emailyn = rs.getString("emailyn");
				String zipcode = rs.getString("zipcode");
				String roadAddr =rs.getString("roadAddr");
				String jibunAddr = rs.getString("jibunAddr");
				String namujiAddr = rs.getString("namujiAddr");
				Date joinDate = rs.getDate("joinDate");
				
				
				MemberVO vo = new MemberVO();
				vo.setUser_id(id);
				vo.setUser_pwd(pwd);
				vo.setUser_name(name);
				vo.setGender(gender);
				vo.setBirthYear(birthy);
				vo.setBirthMonth(birthm);
				vo.setBirthDay(birthd);
				vo.setCalendar(cal);
				vo.setHp1(hp1);
				vo.setHp2(hp2); vo.setHp3(hp3);
				vo.setSmsyn(smsyn);
				vo.setMail_ID(mail_id); vo.setMail_Domain(mail_domain); vo.setEmailyn(emailyn);
				vo.setZipcode(zipcode); vo.setRoadAddr(roadAddr); vo.setJibunAddr(jibunAddr); vo.setNamujiAddr(namujiAddr);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}


