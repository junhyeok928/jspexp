package jspexp.a05_th_member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.a05_th_member.vo.Member;
import jspexp.z01_vo.Emp;
// jspexp.a05_th_member.A01_Dao
public class A01_Dao {
	// 1. 공통 필드 선언
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs; 
	// 2. 공통 메서드 선언(setConn())
	public void setConn() throws SQLException {
		// 1) 드라이버 연결
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("예외 처리:"+e.getMessage());
		}
		// 2) 특정 서버 연결
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info,"scott","tiger");
		System.out.println("접속 성공");
	}
	void closeRsc() {
		if(rs!=null) { 
			try {
				rs.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(pstmt!=null) { 
			try {
				pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}		
		if(stmt!=null) { 
			try {
				stmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(con!=null) { 
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}		
	}
	public ArrayList<Emp> empListPre(String ename, String job) {
		// 리턴할 객체 선언.
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		// 메서드의 마지막부분 return emplist;
		// 1. 연결공통메서드 호출
		String sql = "SELECT *\r\n"
				+ "FROM emp\r\n"
				+ "WHERE ename LIKE '%'||?||'%'\n"
				+ "AND job LIKE '%'||?||'%'";
		System.out.println("# pstmt 실행 #");
		try {
			setConn();
			// 2. Statement 객체 생성( Connection ==> Statement )
			// sql을 먼저 넘겨주고..
			pstmt = con.prepareStatement(sql);
			// ?에 해당 하는 데이터를 처리.
			pstmt.setString(1, ename);
			pstmt.setString(2, job);
			
			
			// 3. ResultSet 객체 생성.sql의 결과(Statement ==> ResultSet)
			rs = pstmt.executeQuery();
			// 4. while()을 통해 결과 내용 처리 sql의 결과는 처리
			//     rs.next() 행단위로 이동하게 처리..
			int rowNum =1;
			
			// 행단위로 단위 객체를 생성하여 ArrayList에 할당 처리..
			while( rs.next() ) {
				System.out.print(rowNum+++"행\t");
				// rs.get데이터유형("컬럼명/alias명")
				System.out.print(rs.getInt("empno")+"\t");
				// rs.getInt(1), rs.getString(2)
				System.out.print(rs.getString("ename")+"\t");
				System.out.print(rs.getString("job")+"\t");
				System.out.print(rs.getInt("mgr")+"\t");
				System.out.print(rs.getDate("hiredate")+"\t");
				System.out.print(rs.getDouble("sal")+"\t");
				System.out.print(rs.getDouble("comm")+"\t");
				System.out.print(rs.getInt("deptno")+"\n");
				Emp emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
				emplist.add(emp); // 단위객체를 emplist에 할당처리.
			}
			// 5. 자원 해제
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 6. 예외 처리..
			System.out.println(e.getMessage());
			closeRsc();
		}
		return emplist;
	}
	
	// 
	public Member login(String id, String pass) {
		// 리턴할 객체 선언.
		
		Member m = null;
		// 1. 연결공통메서드 호출
		String sql = "select * \r\n"
				+ "from member \r\n"
				+ "where id=? and pass = ? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				// Member(String id, String pass, String name, String auth, int point)
				m = new Member(rs.getString("id"), rs.getString("pass"), 
						rs.getString("name"), rs.getString("auth"),
						rs.getInt("point"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 6. 예외 처리..
			System.out.println(e.getMessage());
			closeRsc();
		}
		return m;
	}
	public void insertMember(Member ins) {
		String sql = "INSERT INTO MEMBER values(?,?,?,?,?)";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getId());
			pstmt.setString(2, ins.getPass());
			pstmt.setString(3, ins.getName());
			pstmt.setString(4, ins.getAuth());
			pstmt.setInt(5, ins.getPoint());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// 6. 예외 처리..
			System.out.println(e.getMessage());
			closeRsc();
			
			
		}finally {
			System.out.println("등록 처리 완료!!");
		}

	}
	// 상세화면
	public Member getMember(int id) {
		Member m = null;
		return m;
	}
	// 수정처리
	public void updateMember(Member upt) {
		
	}
	public void deleteMember(int id) {
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 객체 생성 및 메서드 처리..
		A01_Dao dao = new A01_Dao();
		dao.insertMember(new Member("himan333","8888","오길동","관리자",1000));
		
		
	}
	
	
	
}
