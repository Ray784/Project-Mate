<!DOCTYPE html>
<html>
  <head>
    <title>PMate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/nav.css">
    <link rel="stylesheet" href="css/foot.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/project.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .panel{
            border-radius: 2px;
            color: black;
            background-color: whitesmoke;
            width: 60%;
            padding: 20px;
            display: block;
            margin: auto;
        }
         </style>
  </head>

  <body style="background-color: white;">

    <!--navbar-->
		<div class="navbar">
      <a href="../Pmate-final">Home</a>
      <a href="homepage">Projects</a>
      <%
      String name = null;
      String a = null;
      try{ 
       a = (String)session.getAttribute("userSession");
       name = (String)session.getAttribute("userId");%>
      <% if(a.equals("true")){%>
        <a href="myprojects" class="active">My Projects</a>
        <a href="project">Add New Project</a>
        <a class="right" href="logout">Logout  <i class="fa fa-sign-out"></i></a>
        <a class="right" href="edit-profile"><i class="fa fa-id-card"></i>  Edit Profile  </i></a>
        
      <%}}catch(Exception e){response.sendRedirect("login");}%>
    </div>
    <br>
    <br>
    <br>
    <!--data-authors-->
    <h1 style="text-align: center;">Projects You authored</h1>
    <%@ page import="java.sql.*" %>
    <%
    Statement st;
    ResultSet rs;
    ResultSetMetaData rsmd;
    Connection con;
    int count=0;
    try
    {
        org.postgresql.Driver driver=new org.postgresql.Driver();
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Pmate","postgres","cse");
        st=con.createStatement();
        String sql = "SELECT * FROM data where user_id = '"+name+"'";
        rs=st.executeQuery(sql);
        while(rs.next())
        {
            count+=1;
            int id = rs.getInt("id");
            String text = rs.getString("description");
            String title = rs.getString("title");
            String hca = rs.getString("hca");
    %>
    <div class="panel">
        <div>
            <b>Title: </b><%=title%>
            <hr>
            <b>Description: (Brief): </b><%=text %>
            <hr>
            <br>
            <b>Who can apply: </b><%=hca%>
            <br>
        </div>
        <form action="details" method="post" style="float:left; width: 20%;">
            <button class="fbtn" style="width: 80%;" value="<%=id %>" onclick="submit" name="apply">Details</button>
        </form>
        <br>
        <br>
    </div>
    <br>
    <br>
    <br>
    <% }
    }
    catch(Exception e){} %>
    <%
    if(count == 0)
    {%>
      <div class="panel">
        <div>
          Sorry Folks
          <hr>
          No Projects Available Yet
          <hr>
          Projects When Added Will Appear Here!!
          <br>
        </div>
        <button class="fbtn" style="width: 20%;" name="apply">Ok</button>
      </div>
      <br>
      <br>
      <br>
    <%}%>
    <br>
    <br>
    <br>
  </body>
</html>

