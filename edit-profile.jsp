<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css">
    <title>PMate</title>
  </head>
  <body>
    <div class=" center login" style="margin-top: 1.9%;">
      <img src="img/P.png" class="img">
      <%@ page import="java.sql.*" %>
      <%
      String id = null,name1 = null,email = null,dob = null;
      try{ 
        String a = (String)session.getAttribute("userSession");
        String name = (String)session.getAttribute("userId");
        if(a.equals("true")){
            Statement st;
            ResultSet rs;
            ResultSetMetaData rsmd;
            Connection con;
            int count=0;
            org.postgresql.Driver driver=new org.postgresql.Driver();
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Pmate","postgres","cse");
            st=con.createStatement();
            String sql = "SELECT * FROM users WHERE id = '"+name+"'";
            rs=st.executeQuery(sql);
            while(rs.next()){
                count+=1;
                id = rs.getString("id");
                name1 = rs.getString("name");
                email = rs.getString("email");
                dob = rs.getString("dob");
            }
        }
        else
        {
            response.sendRedirect("login");
        }
    }catch(Exception e){response.sendRedirect("login");}%>

        <% String fail = request.getParameter("updated"); %>
        <% try{if(fail.equals("true") ){ %><div class="success alert">Profile Updated</div> <% }}catch(Exception e){} %>
        <% try{if(fail.equals("false") ){ %><div class="fail alert">Profile Update Failed</div> <% }}catch(Exception e){} %>
        <form method="post" onsubmit="return check()" action="updateUser">
          <label for="id">Userid: </label><br><input class="id" type="text" id="user_id" name="user_id" value="<%=id%>" placeholder="Your user_id here... "  required disabled><div style="margin-bottom:-14px; font-size:10px; color:blue">User id can have letters numbers and characters</div>
          <br>
          <label for="id">Name: </label><br><input class="id" type="text" id="name" name="name" value="<%=name1%>" placeholder="Your name here... " required>
          <br>
          <label for="id">Email: </label><br><input class="id" type="email" id="email" name="email" value="<%=email%>" placeholder="Your email here... "  required>
          <br>
          <label for="id">Date Of Birth </label><br><input class="id" type="date" value="<%=dob%>" name="dob" required>
          <br>
          <input type="submit" class="btn center" name="submit" value="Change">
        </form>
        <a href="homepage"><font size="3">Return to homepage...</font></a>
    </div>
    <script>
      var error=0;
      var err=document.getElementById('error');
      var pwd=document.getElementById('password');
      var pwdc=document.getElementById('cpassword');
        function validate()
        {
          if(pwd.value!=pwdc.value)
          {
            err.style.color="red";
            err.innerHTML='Passwords do not match';
            error=1;
          }
          else if(pwd.value==pwdc.value && pwd.value=='' )
          {
            err.innerHTML='';
            error=0;
          }
          else
          {
            err.style.color="green";
            err.innerHTML='Passwords match';
            error=0;
          }
        }
        function check()
        {
          if(error==1)
            return false;
          else
            return true;
        }
    </script>
  </body>
</html>

