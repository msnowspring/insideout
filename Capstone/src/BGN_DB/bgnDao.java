package BGN_DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class bgnDao {
	 Connection con = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   //커넥션 풀을 이용한 데이터베이스 연결 메소드 선언
	      public void connect_CP() {
	         try {
	            //1. Context.xml에 접근
	            Context initctx = new InitialContext();
	            
	            //2.source 태그의 name 과 type 속성을 이용하여
	            //DataSource 객체 생성
	            DataSource ds = (DataSource)initctx.lookup("java:/comp/env/jdbc/pool");
	            
	            //3. 커넥션 풀에서 커넥션 할당 받기
	            con = ds.getConnection();
	         }catch (NamingException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	      }
	      
	      //데이터베이스 연결 해제 및 자원 해제
	      public void disconnect() {
	         //5. 자원 해제
	         try {
	            if( con != null) con.close();
	            if( pstmt != null) pstmt.close();
	            if( rs != null) rs.close();
	         } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	      }
	      
	      //입력된 주소데이터를 데이터베이스에 추가하는 메소드 
	      public void insertAddr(bgnBean bgnbean) {
	         connect_CP();
	         
	         try {
	            //3. sql문 작성
	            //bgn_num, c_num, bgn_title, bgn_content,bgn_image
	            //bgn_link, bgn_startDate, bgn_endDate
	            //bgn_num --> adde_seq(자동증가기능이용)
	            String sql = "insert into addressDB_c values (bgn_num.nextval,?,?,?,?,?,?,?)";
	            pstmt = con.prepareStatement(sql);
	            //? 채우기
	            pstmt.setInt(1, bgnbean.getC_num());
	            pstmt.setString(2, bgnbean.getBgn_title());
	            pstmt.setString(3, bgnbean.getBgn_content());
	            pstmt.setString(4, bgnbean.getBgn_image());
	            pstmt.setString(5, bgnbean.getBgn_link());
	            pstmt.setString(6, bgnbean.getBgn_startDate());
	            pstmt.setString(7, bgnbean.getBgn_endDate());
	            
	            //4. sql문 실행 및 결과
	            pstmt.executeUpdate();
	            System.out.println("insertAddr() : 오라클 DB 처리 완료");
	            
	         } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	         disconnect();
	      }

}
