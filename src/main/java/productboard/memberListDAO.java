package productboard;

import java.util.List;
import java.util.Map;
import java.util.Vector;
import common.DBConnPool;

public class memberListDAO extends DBConnPool {
	public memberListDAO() {
		super();
	}
	
	// 회원 목록 반환
	
	
	
	// 검색 조건에 맞는 회원 목록 반환 (페이징 기능 지원)
	public List<memberListDTO> selectListPage(Map<String , Object> map ) {
		List<memberListDTO> list = new Vector<memberListDTO>();
		String query = " "
					+ "SELECT * FROM ( "
					+ "SELECT Tb.*, ROWNUM rNum FROM ( "
					+ "SELECT * FROM member";
		if (map.get("searchWord") != null) {
			query += "WHERE" + map.get("searchField")
				  + " LIKE '%" + map.get("searchWord") + "%' ";
		}
		
		query += " ORDER BY idx DESC"
			+ " ) Tb "
			+ " )"
			+ " WHERE rNum BETWEEN ? AND ? ";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setNString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				memberListDTO dto = new memberListDTO();
				
				dto.setIdx(rs.getString(1));
				dto.setUserID(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setUserPwd(rs.getString(4));
				dto.setUserEmail(rs.getString(5));
				dto.setUserZipcode(rs.getString(6));
				dto.setUserAddress(rs.getString(7));
				dto.setUserPhone(rs.getString(8));
				dto.setRegedit(rs.getString(9));
				
				list.add(dto);
							
			}
		}
		
		catch (Exception e) {
			System.out.println("게시물 조회 중 예외 발생 ");
			e.printStackTrace();
		}
		return list;
	}
}
