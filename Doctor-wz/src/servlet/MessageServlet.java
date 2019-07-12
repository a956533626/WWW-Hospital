package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sun.net.httpserver.HttpServer;
import facilitate.DBhelper;


public class MessageServlet extends BackServlet {
	//ҽ���鿴����
	public String Cheek(HttpServletRequest request,HttpServletResponse response)
	{
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/doctor?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
		final String USER="root";
		final String PASS="123456";
		Connection conn =null;
		Statement stmt = null;
		String message = null;
		int id=Integer.parseInt(request.getParameter("������"));
		try{
			Class.forName(JDBC_DRIVER);
			System.out.println("loding...........");
			conn=DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("Success");
			stmt=conn.createStatement();
			String sql = "SELECT * FROM leavingmessage WHERE DoctorId = "+id;
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				 message = rs.getString(4);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "%"+message;
	}
	//�������Ʒ���
	public String SetTreatMent(HttpServletRequest request,HttpServletResponse response){
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/doctor?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
		final String USER="root";
		final String PASS="123456";
		Connection conn =null;
		Statement stmt = null; 
		String []arr =new String[2];
		try{
			int max=10;
			Random random = new Random();
			int s=random.nextInt(max);
			Class.forName(JDBC_DRIVER);
			System.out.println("loding...........");
			conn=DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("Success");
			stmt=conn.createStatement();
			int Pid =Integer.parseInt(request.getParameter("������"));
			int Tid =Integer.parseInt(request.getParameter("������"));
			String price = null;
			String sql = "SELECT * FROM project WHERE treatId = "+Tid;
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				price =rs.getString(2);
			}
			String sql2 = "INSERT INTO treatment VALUES("+Pid+","+price+","+T+")";
			
	}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return "%"+arr[0]+arr[1];
	}
	//ҽ����������
	public String SetMessage(HttpServletRequest request,HttpServletResponse response){
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/doctor?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
		final String USER="root";
		final String PASS="123456";
		Connection conn =null;
		Statement stmt = null; 
		String message;
		int i = 0;
		int j =Integer.parseInt(request.getParameter("������"));
		message = request.getParameter("������");
		try{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			stmt=conn.createStatement();
			String sql1 = "SELECT * FROM leavingmessage WHERE PatientId= "+j;
			ResultSet rs = stmt.executeQuery(sql1);
			while(rs.next()){
				i=rs.getInt(3);
			}
			String sql2 = "Update respond Set RespondMessage = "+message+" WHERE MessageId = "+i;
			stmt.execute(sql2);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "�ͻ�����ת��ַ(ǰ��ǵü�@)";
	} 
	//�û���������
	public String PSetMessage(HttpServletRequest request,HttpServletResponse response){
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/doctor?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
		final String USER="root";
		final String PASS="123456";
		Connection conn =null;
		Statement stmt = null; 
		String message;
		String Cdoctor;
		int messageId =Integer.parseInt(request.getParameter("������"));
		int t =Integer.parseInt(request.getParameter("������"));
		int j =Integer.parseInt(request.getParameter("������"));
		Cdoctor = request.getParameter("������");
		message = request.getParameter("������");
		try{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			stmt=conn.createStatement();
			//ȱ�ٲ���(PatientId)
			String sql1 = "INSERT INTO leavingmessage VALUES("+t+","+Cdoctor+","+messageId+","+message+","+j+")";
			stmt.execute(sql1);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "�ͻ�����ת��ַ(ǰ��ǵü�@)";
	}
	//���߲鿴����
	public String PCheek(HttpServletRequest request,HttpServletResponse response){
		final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/doctor?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
		final String USER="root";
		final String PASS="123456";
		Connection conn =null;
		Statement stmt = null; 
		String message = null;
		int i = 0;
		int j =Integer.parseInt(request.getParameter("������"));
		try{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			stmt=conn.createStatement();
			String sql1 = "SELECT * FROM leavingmessage WHERE PatientId= "+j;
			ResultSet rs1 = stmt.executeQuery(sql1);
			while(rs1.next()){
				i=rs1.getInt(3);
			}
			String sql2 = "SELECT * FROM respond WHERE MessageId = "+i;
			ResultSet rs2 =stmt.executeQuery(sql2);
			while(rs2.next()){
				message=rs2.getString(2);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "%"+message;
	}
}
