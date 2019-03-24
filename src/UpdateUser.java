import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class UpdateUser extends HttpServlet{
	int col_cnt;
	ResultSetMetaData rsmd;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
            Statement st;
            Connection con;
            String sql;
        try{
            org.postgresql.Driver driver=new org.postgresql.Driver();
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Pmate","postgres","cse");
            st=con.createStatement();
            HttpSession session = request.getSession();
            String nm = (String) session.getAttribute("userSession");
            if(nm.equals("true")){
                String id = request.getParameter("user_id");
                String email = request.getParameter("email");
                String name = request.getParameter("name");
                String dob = request.getParameter("dob");
                sql = "UPDATE users SET name = '"+name+"', dob = '"+dob+"', email = '"+email+"' WHERE id = '"+id+"'";
                int a=st.executeUpdate(sql);
                if(a <= 0){
                    response.sendRedirect("edit-profile?updated=false");
                }
                else{
                    response.sendRedirect("edit-profile?updated=true");
                }
                st.close();
                con.close();
            }
            else{
                response.sendRedirect("login");
            }  
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }    
}