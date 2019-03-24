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
  </head>
  <body style="background-color: white;">

    <!--navbar-->
		<div class="navbar">
      <a href="../Pmate-final">Home</a>
      <a href="homepage">Projects</a>
      <%try{ 
       String a = (String)session.getAttribute("userSession");
       String name = (String)session.getAttribute("userId");%>
      <% if(a.equals("true")){%>
        <a href="myprojects">My Projects</a>
        <a href="project" class="active">Add New Project</a>
        <a class="right" href="logout">Logout  <i class="fa fa-sign-out"></i></a>
        <a class="right" href="edit-profile"><i class="fa fa-id-card"></i>  Edit Profile  </i></a>
      <%}}catch(Exception e){response.sendRedirect("login");}%>
    </div>
    <br>
    <br>
    <br>
    <div class="project center">
      <h1>Add New Project</h1>
      <hr>
      <% String fail=request.getParameter("Added"); %>
      <% try{if(fail.equals("true") ){ %><div class="success alert">Project added succesfully</div> <% }}catch(Exception e){} %>
      <form method="post" action="addproject">
        <label for="id">Title: </label><input class="id" type="text" id="title" name="title" placeholder="Project title here... "  required>
        <br>
        <label for="id">Brief: </label><textarea class="id" rows="20" id="desp" name="desp" placeholder="Brief description here... " required></textarea>
        <br>
        <label for="id">Who can Apply: </label><textarea rows="4" class="id" id="hca" name="hca" placeholder="Criteria here... "  required></textarea>
        <br>
        <input type="submit" class="btn center" style="width: 20%; height: 5%;" name="submit" value="Add Project">
      </form>
      <a href="homepage"><font size="3">Done with your work here!! Return to homepage!!</font></a>
    </div>
  </body>
</html>

