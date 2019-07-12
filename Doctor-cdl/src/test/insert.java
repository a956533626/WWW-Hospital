
package test;
 
import java.sql.*;
 
public class insert {
 
    // MySQL 8.0 ���°汾 - JDBC �����������ݿ� URL
    //static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    //static final String DB_URL = "jdbc:mysql://localhost:3306/doctor";
 
    // MySQL 8.0 ���ϰ汾 - JDBC �����������ݿ� URL
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost:3306/doctor?useSSL=false&serverTimezone=UTC";
 
 
    // ���ݿ���û��������룬��Ҫ�����Լ�������
    static final String USER = "root";
    static final String PASS = "123456";
 
    public static void main(String[] args,int id, String name, int age, String gender, String Cdoctor) {
        Connection conn = null;
        Statement stmt = null;
        try{
            // ע�� JDBC ����
            Class.forName(JDBC_DRIVER);
        
            // ������
            System.out.println("�������ݿ�...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            stmt = conn.createStatement();
            System.out.println("Ϊҽ���û���ӻ���ԤԼ��Ϣ");
           
            
            String sql ="insert into patients values (id, name, age, gender,Cdoctor)";
            //String sql ="DELETE FROM patients WHERE id = 20";
            //String sql=" UPDATE patients SET Cdoctor = 'T om' WHERE id = 2";
            		stmt.executeUpdate(sql);
            
            
            
            /*ResultSet rs = stmt.executeQuery(sql);
        
            // չ����������ݿ�
            while(rs.next()){
                // ͨ���ֶμ���
                int id  = rs.getInt("id");
                String name = rs.getString("name");
                int age  = rs.getInt("age");
                String gender = rs.getString("gender");
    
                // �������
                System.out.print("ID: " + id);
                System.out.print("����: " + name);
                System.out.print("����: " + age);
                System.out.print("�Ա�: " + gender);
                System.out.print("\n");
            }
            // ��ɺ�ر�
            rs.close();
            stmt.close();
            conn.close();*/
        }catch(SQLException se){
            // ���� JDBC ����
            se.printStackTrace();
        }catch(Exception e){
            // ���� Class.forName ����
            e.printStackTrace();
        }finally{
            // �ر���Դ
            try{
                if(stmt!=null) stmt.close();
            }catch(SQLException se2){
            }// ʲô������
            try{
                if(conn!=null) conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
        System.out.println("Goodbye!");
    }
}
