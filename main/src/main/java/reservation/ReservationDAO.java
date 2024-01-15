package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import member.MemberVO;

public class ReservationDAO {
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
	
	public int checkre(ReservationVO vo) {
		int check_ok = 0;
	
		try {
			connect();
			
			String sql = "select count(*) from r_member where re_date=? and re_room=? and re_time LIKE '%?%'";
			pstmt.setString(1, vo.getRe_date());
			pstmt.setString(2, vo.getRe_room());
			pstmt.setString(3, vo.getRe_time());
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				check_ok = 0;
				System.out.println("중복된 예약 정보");
			} else {
				check_ok = 1;
				System.out.println("예약가능");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return check_ok;
	}
	public void insert(ReservationVO vo) {
		try {
			connect();
			
			
			String sql = 
			"INSERT INTO re_info(re_date, re_room, re_time, user_id)" + "VALUES(?,?,?,?)";
			
					
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getRe_date());
			pstmt.setString(2, vo.getRe_room());
			pstmt.setString(3, vo.getRe_time());
			pstmt.setString(4, vo.getUser_id());
			
			pstmt.executeUpdate();
			
			System.out.println("예약 완료");
			pstmt.close();
			}
		 catch(Exception e) {
			e.printStackTrace();
			}
	}
	
	public void deleteRe(int re_num) {
		try {
			connect();
			String sql = "DELETE FROM re_info WHERE re_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, re_num);
			pstmt.executeUpdate();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int updateRe(ReservationVO vo) {
		int up_ok = 0;
		
		try {
			connect();
			String sql = "UPDATE re_info SET re_date=?, re_room=?, re_time=? where user_id=? and re_num=?";
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, vo.getRe_date());
			pstmt.setString(2, vo.getRe_room());
			pstmt.setString(3, vo.getRe_time());
			pstmt.setString(4, vo.getUser_id());
			pstmt.setInt(5, vo.getRe_num());
			
			up_ok = pstmt.executeUpdate();
			
			System.out.println("up_ok : " + up_ok);
			
			pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return up_ok;
		
	}
	
	public List<ReservationVO> listRe(String id) {
		List<ReservationVO> list= new ArrayList<ReservationVO>();
		try {
			connect();
			
			String sql = "SELECT * FROM re_info where user_id=?";
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String user_id = rs.getString("user_id");
				String re_date = rs.getString("re_date");
				String re_room = rs.getString("re_room");
				String re_time = rs.getString("re_time");
				int re_num = rs.getInt("re_num");
				
				
				ReservationVO vo = new ReservationVO();
				vo.setUser_id(user_id);
				vo.setRe_date(re_date);
				vo.setRe_room(re_room);
				vo.setRe_time(re_time);
				vo.setRe_num(re_num);
				
				
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

	   public List<ReservationVO> reservationList() {
		      List<ReservationVO> list= new ArrayList<ReservationVO>();
		      try {
		         connect();
		         
		         String sql = "SELECT * FROM re_info";
		         System.out.println(sql);
		         pstmt = conn.prepareStatement(sql);
		         
		         ResultSet rs = pstmt.executeQuery();
		         while(rs.next()) {
		            String user_id = rs.getString("user_id");
		            String re_date = rs.getString("re_date");
		            String re_room = rs.getString("re_room");
		            String re_time = rs.getString("re_time");
		            int re_num = rs.getInt("re_num");
		            
		            
		            ReservationVO vo = new ReservationVO();
		            vo.setUser_id(user_id);
		            vo.setRe_date(re_date);
		            vo.setRe_room(re_room);
		            vo.setRe_time(re_time);
		            vo.setRe_num(re_num);
		            
		            
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