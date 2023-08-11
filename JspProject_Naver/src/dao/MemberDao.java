package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dto.BoardDto;
<<<<<<< HEAD
import dto.MemberDto;

public class MemberDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public int memberInsert(MemberDto memberDto) throws Exception {
		int resultNum = 0;

		PreparedStatement pstmt = null;

		try {
			
			String id = memberDto.getId();
			String pwd = memberDto.getPwd();
			String email = memberDto.getEmail();
			String name = memberDto.getName();
			Date birthday = memberDto.getBirthday();
			String telecom = memberDto.getTelecom();
			String gender = memberDto.getGender();
			String nationality = memberDto.getNationality();
			String phoneNum = memberDto.getPhonenumber();

			String sql = "";
			sql += "INSERT INTO MEMBERS";
			sql += " (MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM, GENDER,";
			sql += " NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)";
			sql += " VALUES(MEMBERS_MNO_SEQ.NEXTVAL, ?, ?, ?, ?,";
			sql += " TO_DATE('?', 'YYYYMMDD'), ?, ?, ?, ?, TRUE, SYSDATE, SYSDATE)";

			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, email);
			pstmt.setString(4, name);
			pstmt.setDate(5, (java.sql.Date)birthday);
			pstmt.setString(6, telecom);
			pstmt.setString(7, gender);
			pstmt.setString(8, nationality);
			pstmt.setString(9, phoneNum);

			resultNum = pstmt.executeUpdate();

		} catch (Exception e) {
			
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		} //end of finally
		return resultNum;
	}
	
	public MemberDto memberExist(String id, String pwd) 
			throws SQLException{
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "";
			sql += "SELECT ID, PWD";
			sql	+= " FROM MEMBERS";
			sql += " WHERE ID = ?";
			sql += "AND PWD = ?";
			
			String name = "";
			
			try {
				pstmt = connection.prepareStatement(sql);
				
				int colIndex = 1;
				
				pstmt.setString(colIndex++, id);
				pstmt.setString(colIndex, pwd);
				
				rs = pstmt.executeQuery();
				
				MemberDto memberDto = new MemberDto();

				if (rs.next()) {
//					email = rs.getString("email");
					name = rs.getString("mname");
					
//					memberDto.setEmail(email);
					memberDto.setName(name);
					
					return memberDto;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if (rs != null) {
						rs.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					if (pstmt != null) {
						pstmt.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} // finally 종료
			
			return null;
		}
}
=======
import dto.MemberDto;;



public class MemberDao {
	
	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	public MemberDto memberExist(String id, String pwd) 
			throws SQLException{
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "";
			sql += "SELECT ID, PWD";
			sql	+= " FROM MEMBERS";
			sql += " WHERE ID = ?";
			sql += "AND PWD = ?";
			
			String name = "";
			
			try {
				pstmt = connection.prepareStatement(sql);
				
				int colIndex = 1;
				
				pstmt.setString(colIndex++, id);
				pstmt.setString(colIndex, pwd);
				
				rs = pstmt.executeQuery();
				
				MemberDto memberDto = new MemberDto();

				if (rs.next()) {
//					email = rs.getString("email");
					name = rs.getString("mname");
					
//					memberDto.setEmail(email);
					memberDto.setName(name);
					
					return memberDto;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if (rs != null) {
						rs.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					if (pstmt != null) {
						pstmt.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} // finally 종료
			
			return null;
		}
	
	
	
	
	
	
	
	
	


	
}
>>>>>>> branch 'main' of https://github.com/imchanu96/Middle_TeamProject.git
