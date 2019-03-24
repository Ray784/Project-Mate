import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Validate extends HttpServlet{
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
            String password = request.getParameter("password"); 
            String sql = "SELECT * FROM users WHERE id = '"+id+"' AND password = '"+password+"'";
            
            rs=st.executeQuery(sql);
            HttpSession session=request.getSession();
            if(rs.next()){
                session.setAttribute("userSession", "true");
                session.setAttribute("userId",id);
                response.sendRedirect("homepage");
            }
            else{
                response.sendRedirect("login?loginFail=true");
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