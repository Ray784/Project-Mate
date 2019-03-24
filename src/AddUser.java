import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class AddUser extends HttpServlet{
    Statement st;
	ResultSet rs;
	int col_cnt;
	ResultSetMetaData rsmd;
	Connection con;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        try{
            org.postgresql.Driver driver=new org.postgresql.Driver();
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Pmate","postgres","cse");
            st=con.createStatement();
            String id = request.getParameter("user_id");
            String sql = "SELECT * FROM users WHERE id = '"+id+"'";
            rs=st.executeQuery(sql);
            if(rs.next()){
                response.sendRedirect("register?user_exists=true");
            }
            else{
                String password = request.getParameter("password");
                String email = request.getParameter("email");
                String name = request.getParameter("name");
                String dob = request.getParameter("dob");
                sql = "INSERT INTO users(id,name,password,dob,email) VALUES ('"+id+"','"+name+"','"+password+"','"+dob+"','"+email+"')";
                int a=st.executeUpdate(sql);
                response.sendRedirect("login?Reg=true");
            }
            rs.close();
            st.close();
            con.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
}