package youtube;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	public DAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("클래스를 불러오지 못햇습니다. : " + e);
			e.printStackTrace();
		}
	}
	
	public ArrayList<DTO> selectList(){
		ArrayList<DTO> list = new ArrayList<DTO>();
		String sql = "select * from youtube";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				DTO dto = new DTO();
				
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setChannel(rs.getString("channel"));
				dto.setViewCount(rs.getInt("viewCount"));
				dto.setThumbnail(rs.getString("thumbnail"));
				dto.setMovieTag(rs.getString("movieTag"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {}
			
		}
		
		
		
		return list;
	}

	public int insert(DTO dto) {
		int row = 0;
		String sql = "insert into youtube values ( ?, ?, ?, ?, ?, ?)";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getIdx());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getChannel());
			pstmt.setInt(4, dto.getViewCount());
			pstmt.setString(5, dto.getThumbnail());
			pstmt.setString(6, dto.getMovieTag());
			
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {}
		}
		
		return row;
	}
	
	public DTO selectOne(int idx) {
		DTO dto = null;
		String sql = "select * from youtube where idx = ?";
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new DTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setChannel(rs.getString("channel"));
				dto.setViewCount(rs.getInt("viewCount"));
				dto.setThumbnail(rs.getString("thumbnail"));
				dto.setMovieTag(rs.getString("movieTag"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
}
/*IDX          NUMBER         
TITLE        VARCHAR2(500)  
CHANNEL      VARCHAR2(100)  
VIEWCOUNT    NUMBER         
THUMBNAIL    VARCHAR2(500)  
MOVIETAG     VARCHAR2(1000) 
*/