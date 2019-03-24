import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class AddProject extends HttpServlet{
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
            HttpSession session = request.getSession();
            String user = (String)session.getAttribute("userId");
            String desp = request.getParameter("desp");
            String title = request.getParameter("title");
            String hca = request.getParameter("hca");
            String sql = "INSERT INTO data(user_id,description,title,hca) VALUES ('"+user+"','"+desp+"','"+title+"','"+hca+"')";
            int a=st.executeUpdate(sql);
            response.sendRedirect("project?Added=true");
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