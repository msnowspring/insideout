package MemberInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import MemberInfo.memBean;

public class memDAO {
	// 데이터베이스 처리를 위한 뱐수 선언 및 초기화
		// 변수 초기화
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 커넥션 풀을 이용한 데이터베이스 연결 메소드 선언
		public void connect_CP() {
			try{
				// 1. context.xml 접근
				Context initctx = new InitialContext();

				// 2. Resource태그의 name과 type 속성을 이용하여 Datasource 객체 생성
				DataSource ds = (DataSource) initctx.lookup("java:/comp/env/jdbc/pool");

				// 3. 커넥션 폴에서 커넥션 할당 받기
				con = ds.getConnection();
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		// 데이터베이스 연결 및 자원 해제
		public void disconnect() {
			// 5. 자원 해제
			try{
					if (con != null)
						con.close();
					if (pstmt != null)
						pstmt.close();
					if (rs != null)
						rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		//num을 이용하여 하나의 주소 정보를 리턴하는 메소드
		public memBean getOneMem(int num){
			memBean mbean = new memBean();
			//1.데이터베이스 연결
			connect_CP();
			//2. SQL실행
			try {
				//3.sql문 작성:테이블에 저장된 데이터 읽어오기
				 String sql = "select * from memberinfo where num=?";
				 pstmt = con.prepareStatement(sql);
				//3.1 ?설정
				 pstmt.setInt(1, num);
				//4. sql문 실행 및 결과
				  rs= pstmt.executeQuery();
				  
				 while(rs.next()){
					 //addrBean 클래스 선언하고
					 //해당 클래스에 데이터베이스로부터 읽어온 데이터를 저장
					 
					 mbean.setNum(rs.getInt("num"));
					 mbean.setId(rs.getString("id"));
					 mbean.setPass(rs.getString("pass"));
					 mbean.setName(rs.getString("name"));
					 mbean.setBirth(rs.getInt("birth"));
					 mbean.setEmail(rs.getString("email"));
					 mbean.setTel(rs.getInt("tel"));
				
			} 
				 System.out.println("getOneMem(): DB 처리 완료");
			 }
				 
				 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			//3.데이터베이스 연결 해제
			disconnect();
			return mbean;
		}
		//입력된 주소 데이터를 데이터베이스에 추가하는 메소드
			public void InsertMem(memBean mbean) {
				connect_CP();
				try {
				// 3. sql문 작성
				//num --> mem_seq(자동 증가 기능 이용)
				String sql = 
				"insert into memberinfo values(mem_seqC.nextval,?,?,?,?,?,?)";
					pstmt = con.prepareStatement(sql);
					
					// ? 채우기
					pstmt.setString(1, mbean.getId());
					pstmt.setString(2, mbean.getPass());
					pstmt.setString(3, mbean.getName());
					pstmt.setInt(4, mbean.getBirth());
					pstmt.setString(5, mbean.getEmail());
					pstmt.setInt(6, mbean.getTel());
					
					// 4. sql문 실행 및 결과
					pstmt.executeUpdate();
					System.out.println("InsertMem(): 오라클 DB 처리 완료");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				disconnect();
			}
			
			//데이터베이스로부터 전체 주소록을 읽어오는 메소드
			public ArrayList<memBean> getAllAddr(){
				ArrayList<memBean> bList =  new ArrayList<>();
				//1.데이터베이스 연결
				connect_CP();
				//2.SQL처리
				try {
					
					 String sql = "select * from memberinfo";
					 pstmt = con.prepareStatement(sql);
					
					//4. sql문 실행 및 결과
					  rs= pstmt.executeQuery();
					  
					 while(rs.next()){
						 //addrBean 클래스 선언하고
						 //해당 클래스에 데이터베이스로부터 읽어온 데이터를 저장
						 //어레이리스트에 클래스 저장
						 
						 memBean mbean = new memBean();
						 
						 mbean.setNum(rs.getInt("num"));
						 mbean.setId(rs.getString("id"));
						 mbean.setPass(rs.getString("pass"));
						 mbean.setName(rs.getString("name"));
						 mbean.setBirth(rs.getInt("birth"));
						 mbean.setEmail(rs.getString("email"));
						 mbean.setTel(rs.getInt("tel"));
						 //리스트에 빈즈클래스 저장
						 bList.add(mbean);
				} 
					 System.out.println("getAllAddr(): DB 처리 완료");
				 }
					 
					 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//3.연결해제
				disconnect();
				return bList;
			}
			
			//수정된 주소록의 데이터를 addrBean 클래스로 받아와서, 테이블의 해당 레코드를 업데이트(update)합니다.
			public void ModifyMem(memBean mbean){
			//1.데이터베이스 연결
			connect_CP();
			//2. SQL실행
			try {
			// 3. sql문 작성
			String sql = 
					"update memberinfo set id=?, pass=?, name=?, "
					+ "birth=?, email=?, tel=?, where num=?";
				pstmt = con.prepareStatement(sql);
				
				// ? 채우기
				pstmt.setString(1, mbean.getId());
				pstmt.setString(2, mbean.getPass());
				pstmt.setString(3, mbean.getName());
				pstmt.setInt(4, mbean.getBirth());
				pstmt.setString(5, mbean.getEmail());
				pstmt.setInt(5, mbean.getTel());
				pstmt.setInt(6, mbean.getNum());
				
				// 4. sql문 실행 및 결과
				pstmt.executeQuery();
				System.out.println("ModifyMem(): 오라클 DB 처리 완료");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        //3. 연결 해제
			disconnect();
		}
		//num값에 해당되는 테이블의 레코드를 찾아서 삭제하는 메소드
		public void DeleteMem(int num) {
			//1.데이터베이스 연결
					connect_CP();
					//2. SQL실행
					try {
						//3.sql문 작성:테이블에 저장된 데이터 읽어오기
						 String sql = "delete from memberinfo where num=?";
						 pstmt = con.prepareStatement(sql);
						//3.1 ?설정
						 pstmt.setInt(1, num);
						//4. sql문 실행 및 결과
						 pstmt.executeUpdate();
						 System.out.println("DeleteMem(): DB 처리 완료");
					 }catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					//3.데이터베이스 연결 해제
					disconnect();
			
		}

}
