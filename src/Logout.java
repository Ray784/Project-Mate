import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Logout extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("main");
        }
}